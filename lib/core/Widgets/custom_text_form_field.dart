import 'package:flutter/material.dart';
import 'package:fruithub/core/utils/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.keyboardType,
    this.suffixIcon,
  });
  final String hintText;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,

        filled: true,
        fillColor: const Color(0xfff9fafa),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        hintText: hintText,
        hintStyle: TextStyles.bold13.copyWith(color: const Color(0xff949d9e)),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(color: Color(0xffe6e9e9), width: 1),
    );
  }
}
