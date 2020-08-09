import 'package:flutter/widgets.dart';
import 'package:flutter_dynamic_forms/flutter_dynamic_forms.dart';
import 'package:flutter_dynamic_forms_components/flutter_dynamic_forms_components.dart' as model;

import 'label_widget.dart';

class ReactiveLabelRenderer extends FormElementRenderer<model.Label> {
  @override
  Widget render(model.Label element, BuildContext context, FormElementEventDispatcherFunction dispatcher,
      FormElementRendererFunction renderer) {
    return Center(
      child: StreamBuilder<String>(
          initialData: element.value,
          stream: element.valueChanged,
          builder: (context, snapshot) {
            return LabelWidget(
                id: element.id,
                text: element.value,
                fontWeight: element.fontWeight,
                color: element.color,
                fontSize: element.fontSize,
            );
          }),
    );
  }
}
