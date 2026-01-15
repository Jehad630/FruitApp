import 'package:flutter/material.dart';
import 'package:fruithub/core/Widgets/Custom_AppBar.dart';
import 'package:fruithub/features/Auth/presentaion/view/widget/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  static const String routeName = 'signUp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppbar(context, title: " حساب جديد "),
      body: SignUpViewBody(),
    );
  }
}
