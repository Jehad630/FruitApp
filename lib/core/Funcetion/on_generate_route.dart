import 'package:flutter/material.dart';
import 'package:fruithub/features/On_Boarding/presentaion/view/on_boarding_view.dart';
import 'package:fruithub/features/Splash/presentaion/view/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
