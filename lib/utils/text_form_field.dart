import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CustomTextField extends StatelessWidget {
  final attribute, controller, label, maxLines, prefixIcon, minLines;

  const CustomTextField(
      {Key key,
      this.attribute,
      this.controller,
      this.label,
      this.maxLines: 1,
      this.minLines: 1,
      this.prefixIcon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: FormBuilderTextField(
          attribute: attribute,
          controller: controller,
          maxLines: maxLines,
          decoration: InputDecoration(
              prefixIcon: prefixIcon ?? SizedBox(),
              labelStyle: Theme.of(context).textTheme.subtitle1,
              labelText: label,
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue)))),
    );
  }
}
