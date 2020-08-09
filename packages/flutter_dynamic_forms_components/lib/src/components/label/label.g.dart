// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:flutter_dynamic_forms_components/flutter_dynamic_forms_components.dart';
import 'package:dynamic_forms/dynamic_forms.dart';
import 'font_weight.g.dart';

class Label extends FormElement {
  static const String colorPropertyName = 'color';
  static const String fontSizePropertyName = 'fontSize';
  static const String fontWeightPropertyName = 'fontWeight';
  static const String valuePropertyName = 'value';

  Property<int> get colorProperty => properties[colorPropertyName];
  set colorProperty(Property<int> value) =>
      registerProperty(colorPropertyName, value);
  int get color =>
      colorProperty.value;
  Stream<int> get colorChanged => colorProperty.valueChanged;

  Property<int> get fontSizeProperty => properties[fontSizePropertyName];
  set fontSizeProperty(Property<int> value) =>
      registerProperty(fontSizePropertyName, value);
  int get fontSize =>
      fontSizeProperty.value;
  Stream<int> get fontSizeChanged => fontSizeProperty.valueChanged;

  Property<FontWeight> get fontWeightProperty => properties[fontWeightPropertyName];
  set fontWeightProperty(Property<FontWeight> value) =>
      registerProperty(fontWeightPropertyName, value);
  FontWeight get fontWeight =>
      fontWeightProperty.value;
  Stream<FontWeight> get fontWeightChanged => fontWeightProperty.valueChanged;

  Property<String> get valueProperty => properties[valuePropertyName];
  set valueProperty(Property<String> value) =>
      registerProperty(valuePropertyName, value);
  String get value =>
      valueProperty.value;
  Stream<String> get valueChanged => valueProperty.valueChanged;

  @override
  FormElement getInstance() {
    return Label();
  }
}
