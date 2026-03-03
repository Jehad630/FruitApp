import 'package:flutter/material.dart';
import 'package:fruithub/core/utils/app_text_styles.dart';
import 'package:svg_flutter/svg.dart';

class Custom_home_appbar extends StatelessWidget {
  const Custom_home_appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Container(
        padding: EdgeInsets.all(12),
        decoration: ShapeDecoration(
          shape: OvalBorder(),
          color: Color(0xffeef8ed),
        ),
        child: SvgPicture.asset("assets/images/notification.svg"),
      ),
      leading: Image.asset("assets/images/profile_image.png"),
      title: Text("صباح الخير!... ", style: TextStyles.regular16),
      subtitle: Text("جهاد فستق", style: TextStyles.bold16),
    );
  }
}
