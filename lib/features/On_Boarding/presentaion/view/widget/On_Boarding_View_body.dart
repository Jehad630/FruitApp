import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruithub/core/Widgets/Custom_button.dart';
import 'package:fruithub/core/constants/constants.dart';
import 'package:fruithub/core/utils/App_colors.dart';
import 'package:fruithub/features/On_Boarding/presentaion/view/widget/on_boarding__page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  var currentIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentIndex = pageController.page!.round();
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: on_boarding_PageView()),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.lightPrimaryColor,
            color: AppColors.lightPrimaryColor.withOpacity(.5),
          ),
        ),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: khorizontalPadding),
          child: CustomButton(onPressed: () {}, text: "ابدأ الان"),
        ),
        SizedBox(height: 43),
      ],
    );
  }
}
