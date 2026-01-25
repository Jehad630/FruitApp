import 'package:flutter/material.dart';
import 'package:fruithub/core/Widgets/Custom_button.dart';
import 'package:fruithub/core/Widgets/custom_text_form_field.dart';
import 'package:fruithub/core/constants/constants.dart';
import 'package:fruithub/core/utils/App_colors.dart';
import 'package:fruithub/core/utils/app_images.dart';
import 'package:fruithub/core/utils/app_text_styles.dart';
import 'package:fruithub/features/Auth/presentaion/view/widget/dont_have_account_widget.dart';
import 'package:fruithub/features/Auth/presentaion/view/widget/ro_divider.dart';
import 'package:fruithub/features/Auth/presentaion/view/widget/social_login_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: khorizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 34),
            CustomTextFormField(
              hintText: 'البريد الإلكتروني',
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 26),
            CustomTextFormField(
              hintText: 'كلمة المرور',
              keyboardType: TextInputType.visiblePassword,
              suffixIcon: const Icon(
                Icons.visibility_off,
                color: Color(0xffc9cecf),
              ),
            ),
            const SizedBox(height: 26),

            Row(
              mainAxisAlignment: .end,
              children: [
                Text(
                  "نسيت كلمة المرور؟",
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 42),
            CustomButton(onPressed: () {}, text: "تسجيل الدخول"),
            const SizedBox(height: 42),

            const dontHaveAccountWidget(),

            const SizedBox(height: 47),
            const ro_divider(),
            const SizedBox(height: 26),
            SocialLoginButton(
              title: "  تسجيل  بواسطة جوجل",
              image: Assets.assetsImagesGoogleIcon,
              onPressed: () {},
            ),
            const SizedBox(height: 26),
            SocialLoginButton(
              title: "  تسجيل  بواسطة أبل",
              image: Assets.assetsImagesApplIcon,
              onPressed: () {},
            ),
            const SizedBox(height: 26),
            SocialLoginButton(
              title: "  تسجيل  بواسطة فيسبوك",
              image: Assets.assetsImagesFacebookIcon,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
