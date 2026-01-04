import 'package:flutter/material.dart';
import 'package:fruithub/core/utils/app_images.dart';
import 'package:fruithub/features/On_Boarding/presentaion/view/on_boarding_view.dart';
import 'package:svg_flutter/svg.dart';

class SplashViewVody extends StatefulWidget {
  const SplashViewVody({super.key});

  @override
  State<SplashViewVody> createState() => _SplashViewVodyState();
}

class _SplashViewVodyState extends State<SplashViewVody> {
  void initState() {
    excuteNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .stretch,
      mainAxisAlignment: .spaceBetween,
      children: [
        Row(
          mainAxisAlignment: .start,
          children: [SvgPicture.asset(Assets.assetsImagesPlant)],
        ),
        SvgPicture.asset(Assets.assetsImagesLogo),

        SvgPicture.asset(Assets.assetsImagesSplashBottom, fit: BoxFit.fill),
      ],
    );
  }

  void excuteNavigation() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
    });
  }
}
