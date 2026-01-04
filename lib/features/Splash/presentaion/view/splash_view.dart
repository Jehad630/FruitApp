import 'package:flutter/material.dart';
import 'package:fruithub/features/Splash/presentaion/view/widget/splash_view_vody.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const routeName = "splash";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: SplashViewVody()));
  }
}
