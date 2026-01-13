import 'package:flutter/material.dart';
import 'package:fruithub/core/utils/app_text_styles.dart';

class ro_divider extends StatelessWidget {
  const ro_divider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: Color(0xffdcdede))),
        SizedBox(width: 16),
        Text("  أو  ", style: TextStyles.semiBold16),
        SizedBox(width: 16),

        Expanded(child: Divider(color: Color(0xffdcdede))),
      ],
    );
  }
}
