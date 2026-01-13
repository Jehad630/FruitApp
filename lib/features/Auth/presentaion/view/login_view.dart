import 'package:flutter/material.dart';
import 'package:fruithub/core/Widgets/Custom_AppBar.dart';
import 'package:fruithub/features/Auth/presentaion/view/widget/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const String routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppbar(context, title: "تسجيل الدخول"),
      body: LoginViewBody(),
    );
  }
}
