import 'package:flutter/material.dart';
import 'package:fruithub/core/utils/App_colors.dart';
import 'package:fruithub/core/utils/app_text_styles.dart';

class dontHaveAccountWidget extends StatelessWidget {
  const dontHaveAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: "لا تمتلك حساب؟ ",
            style: TextStyles.semiBold16.copyWith(
              color: Color(0xff949d9e),
            ),
          ),
          TextSpan(
            text: " ",
            style: TextStyles.semiBold16.copyWith(
              color: Color(0xff616a6b),
            ),
          ),
          TextSpan(
            text: "إنشاء حساب",
            style: TextStyles.semiBold16.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
