import 'package:flutter/material.dart';
import 'package:flutter_dynamic_forms/flutter_dynamic_forms.dart';
import 'package:flutter_dynamic_forms_components/src/components/text_field/text_field_input_type.g.dart';

class TextFieldWidget extends StatefulWidget {
  final String id;
  final String text;
  final String errorText;
  final String label;
  final TextFieldInputType textInputType;
  final FormElementEventDispatcherFunction dispatcher;
  final bool obscureText;

  const TextFieldWidget({
    Key key,
    this.id,
    this.text,
    this.label,
    this.dispatcher,
    this.errorText,
    this.textInputType,
    this.obscureText,
  }) : super(key: key);

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  TextEditingController _controller = TextEditingController();

  VoidCallback _listener;
  bool hideText;

  @override
  void initState() {
    super.initState();
    _listener = () =>
        widget.dispatcher(
          ChangeValueEvent(value: _controller.text, elementId: widget.id),
        );
    _controller.addListener(_listener);
    hideText = widget.obscureText;
  }

  @override
  void dispose() {
    if (_listener != null) {
      _controller?.removeListener(_listener);
    }
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_controller.text != widget.text) {
      _controller.text = widget.text;
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: widget.label,
          errorText: widget.errorText,
          disabledBorder: InputBorder.none,
          filled: true,
          fillColor: Color(0xFFf5f5f5),
          suffixIcon: widget.obscureText ? IconButton(
            icon: Icon(hideText ? Icons.visibility : Icons.visibility_off),
            onPressed: () {
              setState(() {
                hideText = !hideText;
              });
            },
          ) : null,
        ),
        keyboardType: getTextInputType(widget.textInputType),
        controller: _controller,
        obscureText: hideText,
      ),
    );
  }

  TextInputType getTextInputType(TextFieldInputType textInputType) {
    TextInputType result;

    switch (textInputType) {
      case TextFieldInputType.datetime:
        result = TextInputType.datetime;
        break;
      case TextFieldInputType.emailAddress:
        result = TextInputType.emailAddress;
        break;
      case TextFieldInputType.multiline:
        result = TextInputType.multiline;
        break;
      case TextFieldInputType.number:
        result = TextInputType.number;
        break;
      case TextFieldInputType.money:
        result = TextInputType.numberWithOptions(signed: false, decimal: true);
        break;
      case TextFieldInputType.phone:
        result = TextInputType.phone;
        break;
      case TextFieldInputType.text:
        result = TextInputType.text;
        break;
      case TextFieldInputType.url:
        result = TextInputType.url;
        break;
      default:
        result = TextInputType.text;
        break;
    }
    return result;
  }
}
