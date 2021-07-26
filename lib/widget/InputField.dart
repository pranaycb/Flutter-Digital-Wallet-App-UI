import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final prefixIcon;
  final hintText;
  final labelText;
  final initialValue;
  const InputField({Key? key, this.prefixIcon, this.hintText, this.labelText, this.initialValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 1,
      initialValue: initialValue,
      decoration: InputDecoration(
          prefixIcon: prefixIcon,
          hintText: hintText,
          labelText: labelText,
          labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          )),
    );
  }
}
