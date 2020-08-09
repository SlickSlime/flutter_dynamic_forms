// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:flutter_dynamic_forms_components/flutter_dynamic_forms_components.dart';
import 'package:dynamic_forms/dynamic_forms.dart';
import 'font_weight.g.dart';

class LabelParser<TLabel extends Label>
    extends FormElementParser<TLabel> {
  @override
  String get name => 'label';

  @override
  FormElement getInstance() => Label();

  @override
  void fillProperties(
    TLabel label, 
    ParserNode parserNode, 
    Element parent,
    ElementParserFunction parser,
  ) {
    super.fillProperties(label, parserNode, parent, parser);
    label
      ..colorProperty = parserNode.getIntProperty(
        'color',      
        defaultValue: () => 4278190080,
        isImmutable: true,
      )
      ..fontSizeProperty = parserNode.getIntProperty(
        'fontSize',      
        defaultValue: () => 14,
        isImmutable: true,
      )
      ..fontWeightProperty = parserNode.getEnumProperty(
        'fontWeight',
        FontWeight.values,
        defaultValue: () => FontWeight.w400,
        isImmutable: true,
      )
      ..valueProperty = parserNode.getStringProperty(
        'value',
        defaultValue: ParserNode.defaultString,
        isImmutable: true,
      );
  }
}
