import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String labelText;
  final String suffixText;
  final TextEditingController controller;
  final bool enabled;

  const CustomTextfield({
    Key? key,
    required this.labelText,
    required this.suffixText,
    required this.controller,
    required this.enabled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 7.0),
      child: TextField(
        enabled: enabled,
        controller: controller,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.bottom,
        style: const TextStyle(fontSize: 18),
        decoration: InputDecoration(
          labelText: labelText,
          suffixText: suffixText,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          disabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
      ),
    );
  }
}
