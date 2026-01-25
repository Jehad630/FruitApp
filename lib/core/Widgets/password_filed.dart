import 'package:flutter/material.dart';
import 'package:fruithub/core/Widgets/custom_text_form_field.dart';

class PasswordFiled extends StatefulWidget {
  const PasswordFiled({super.key, this.onSaved});
  final void Function(String?)? onSaved;

  @override
  State<PasswordFiled> createState() => _PasswordFiledState();
}

class _PasswordFiledState extends State<PasswordFiled> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      onSaved: widget.onSaved,
      hintText: "كلمة المرور",
      obscureText: obscureText,
      keyboardType: TextInputType.visiblePassword,
      suffixIcon: GestureDetector(
        onTap: () {
          obscureText = !obscureText;
          setState(() {});
        },
        child: obscureText
            ? const Icon(Icons.visibility_off, color: Color(0xffc9cecf))
            : const Icon(Icons.visibility, color: Colors.black),
      ),
    );
  }
}
