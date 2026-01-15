import 'package:flutter/material.dart';
import 'package:fruithub/features/Auth/presentaion/view/Sign_up_view.dart';
import 'package:fruithub/features/Auth/presentaion/view/login_view.dart';
import 'package:fruithub/features/On_Boarding/presentaion/view/on_boarding_view.dart';
import 'package:fruithub/features/Splash/presentaion/view/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case SignUpView.routeName:
      return MaterialPageRoute(builder: (context) => const SignUpView());

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
