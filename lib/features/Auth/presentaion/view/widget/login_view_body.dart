import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruithub/core/Widgets/Custom_button.dart';
import 'package:fruithub/core/Widgets/custom_text_form_field.dart';
import 'package:fruithub/core/Widgets/password_filed.dart';
import 'package:fruithub/core/constants/constants.dart';
import 'package:fruithub/core/utils/App_colors.dart';
import 'package:fruithub/core/utils/app_images.dart';
import 'package:fruithub/core/utils/app_text_styles.dart';
import 'package:fruithub/features/Auth/presentaion/cubits/sign_in_cubit/sign_in_cubit.dart';
import 'package:fruithub/features/Auth/presentaion/view/widget/dont_have_account_widget.dart';
import 'package:fruithub/features/Auth/presentaion/view/widget/ro_divider.dart';
import 'package:fruithub/features/Auth/presentaion/view/widget/social_login_button.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  late String email, name, password;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: khorizontalPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 34),
              CustomTextFormField(
                onSaved: (value) {
                  email = value!;
                },
                hintText: 'البريد الإلكتروني',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 26),
              PasswordFiled(
                onSaved: (value) {
                  password = value!;
                },
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
              CustomButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    context.read<SignInCubit>().signInWithEmailAndPassword(
                      email,
                      password,
                    );
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
                text: "تسجيل الدخول",
              ),
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
      ),
    );
  }
}
