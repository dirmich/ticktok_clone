import 'package:flutter/material.dart';
import 'package:ticktok_clone/constants.dart';

class TextInputField extends StatelessWidget {
  final String labelText;
  final IconData icon;
  final bool isObscured;
  final TextEditingController controller;

  const TextInputField(
      {Key? key,
      required this.labelText,
      required this.icon,
      this.isObscured = false,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(icon),
        labelStyle: const TextStyle(fontSize: 20),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: borderColor),
        ),
      ),
      obscureText: isObscured,
    );
  }
}
