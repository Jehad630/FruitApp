import 'package:flutter/material.dart';
import 'package:fruithub/core/utils/app_text_styles.dart';

AppBar BuildAppbar(context, {required String title}) {
  return AppBar(
    backgroundColor: Colors.white,

    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(Icons.arrow_back_ios_new, color: Colors.black),
    ),
    centerTitle: true,
    title: Text(title, style: TextStyles.bold19),
  );
}
