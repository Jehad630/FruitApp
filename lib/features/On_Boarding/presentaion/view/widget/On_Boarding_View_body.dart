import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruithub/core/Widgets/Custom_button.dart';
import 'package:fruithub/core/constants/constants.dart';
import 'package:fruithub/core/services/shared_prefrences_singleton.dart';
import 'package:fruithub/core/utils/App_colors.dart';
import 'package:fruithub/features/Auth/presentaion/view/widget/login_view.dart';
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
      setState(() {});
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
        Expanded(child: on_boarding_PageView(pageController: pageController)),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.lightPrimaryColor,
            color: currentIndex == 1
                ? AppColors.primaryColor
                : AppColors.primaryColor.withOpacity(.5),
          ),
        ),
        SizedBox(height: 30),
        Visibility(
          visible: currentIndex == 1 ? true : false,
          maintainAnimation: true,
          maintainSize: true,
          maintainState: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: khorizontalPadding),
            child: CustomButton(
              onPressed: () {
                Prefs.setbool(KisOnBoadringViewSeen, true);
                Navigator.of(context).pushReplacementNamed(LoginView.routeName);
              },
              text: "ابدأ الان",
            ),
          ),
        ),
        SizedBox(height: 43),
      ],
    );
  }
}
