import 'package:flutter/material.dart';
import 'package:flutter_dynamic_forms_components/src/components/label/font_weight.g.dart'
    as font_weight_model;

class LabelWidget extends StatelessWidget {
  final String id;
  final String text;
  final int color;
  final int fontSize;
  final font_weight_model.FontWeight fontWeight;

  const LabelWidget({
    Key key,
    this.id,
    this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: getFontWeight(fontWeight),
            color: Color(color),
            fontSize: fontSize.toDouble(),
          ),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }

  FontWeight getFontWeight(font_weight_model.FontWeight fontWeight) {
    switch (fontWeight) {
      case font_weight_model.FontWeight.w100:
        return FontWeight.w100;
      case font_weight_model.FontWeight.w200:
        return FontWeight.w200;
      case font_weight_model.FontWeight.w300:
        return FontWeight.w300;
      case font_weight_model.FontWeight.w400:
        return FontWeight.w400;
      case font_weight_model.FontWeight.w500:
        return FontWeight.w500;
      case font_weight_model.FontWeight.w600:
        return FontWeight.w600;
      case font_weight_model.FontWeight.w700:
        return FontWeight.w700;
      case font_weight_model.FontWeight.w800:
        return FontWeight.w800;
      case font_weight_model.FontWeight.w900:
        return FontWeight.w900;
      default:
        return FontWeight.w400;
    }
  }
}
