import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruithub/core/Widgets/Custom_button.dart';
import 'package:fruithub/core/Widgets/custom_text_form_field.dart';
import 'package:fruithub/core/constants/constants.dart';
import 'package:fruithub/features/Auth/presentaion/cubits/sign_up_cubits/sign_up_cubit.dart';
import 'package:fruithub/features/Auth/presentaion/view/widget/TermsAndConditionsWidget.dart';
import 'package:fruithub/features/Auth/presentaion/view/widget/have_an_account_widget.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  late String email, name, password;

  late bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: khorizontalPadding),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              const SizedBox(height: 24),
              CustomTextFormField(
                onSaved: (value) {
                  name = value!;
                },
                hintText: "الاسم الكامل",
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 26),
              CustomTextFormField(
                onSaved: (value) {
                  email = value!;
                },
                hintText: "البريد الإلكتروني",
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 26),
              CustomTextFormField(
                onSaved: (value) {
                  password = value!;
                },
                hintText: "كلمة المرور",
                keyboardType: TextInputType.visiblePassword,
                suffixIcon: const Icon(
                  Icons.visibility_off,
                  color: Color(0xffc9cecf),
                ),
              ),
              const SizedBox(height: 16),

              TermsAndConditionsWidget(
                onChanged: (value) {
                  isTermsAccepted = value;
                },
              ),
              const SizedBox(height: 30),
              CustomButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    context.read<SignUpCubit>().createUserWithEmailAndPassword(
                      email,
                      password,
                      name,
                    );
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
                text: "إنشاء حساب جديد",
              ),
              const SizedBox(height: 26),
              const HaveAnAccountWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
