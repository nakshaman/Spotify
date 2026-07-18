import 'package:flutter/material.dart';
import 'package:spotify/core/theme/app_pallete.dart';

class CustomField extends StatelessWidget {
  const CustomField({
    super.key,
    required this.hintText,
    required this.controller,
    this.isObsecureText = false,
  });
  final String hintText;
  final TextEditingController controller;
  final bool isObsecureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(hintText: hintText),
      obscureText: isObsecureText,
      validator: (value) {
        if (value!.trim().isEmpty) {
          return "$hintText is missing.";
        }
        return null;
      },
    );
  }
}
