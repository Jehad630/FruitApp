import 'package:flutter/material.dart';
import 'package:fruithub/core/utils/app_text_styles.dart';
import 'package:svg_flutter/svg.dart';

class SerachTextFiled extends StatelessWidget {
  const SerachTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x0A000000),
            blurRadius: 9,
            offset: Offset(0, 2),
            spreadRadius: 0,
          )
        ]
      ),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.all(16),
            child: SvgPicture.asset("assets/images/search_icon.svg"),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SvgPicture.asset("assets/images/filter.svg"),
          ),
          hintStyle: TextStyles.regular13.copyWith(color: Color(0Xff949d9e)),
          filled: true,
          fillColor: Colors.white,
          hintText: "ابحث عن..",
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
        ),
      ),
    );
  }
}

OutlineInputBorder buildBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(4),
    borderSide: BorderSide(color: Color(0xffe6e9e9), width: 1),
  );
}
