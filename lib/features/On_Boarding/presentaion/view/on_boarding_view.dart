import 'package:flutter/material.dart';
import 'package:fruithub/features/On_Boarding/presentaion/view/widget/On_Boarding_View_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

static const routeName = '/OnBoardingView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: OnBoardingViewBody()));
  }
}
