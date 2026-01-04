import 'package:flutter/material.dart';
import 'package:fruithub/core/utils/app_images.dart';
import 'package:svg_flutter/svg.dart';

class SplashViewVody extends StatelessWidget {
  const SplashViewVody({super.key});

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
}
