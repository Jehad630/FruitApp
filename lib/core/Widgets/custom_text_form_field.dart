import 'package:flutter/material.dart';
import 'package:fruithub/core/utils/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.keyboardType,
    this.suffixIcon,
    this.onSaved,
  });
  final String hintText;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'هذا الحقل مطلوب';
        }
        return null;
      },
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
