import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruithub/core/utils/App_colors.dart';
import 'package:fruithub/core/utils/app_images.dart';
import 'package:svg_flutter/svg_flutter.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

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
      ],
    );
  }
}

class on_boarding_PageView extends StatelessWidget {
  const on_boarding_PageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageViewItem(
          image: Assets.assetsImagesPageViewItem1Image,
          bakgroundImage: Assets.assetsImagesPageViewItem1BackgroundImage,
          subtitle:
              "اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
          title: Row(
            mainAxisAlignment: .center,
            children: [Text("مرحبًا بك في "), Text("Fruit"), Text("HUB")],
          ),
        ),
        PageViewItem(
          image: Assets.assetsImagesPageViewItem2Image,
          bakgroundImage: Assets.assetsImagesPageViewItem2BackgroundImage,
          subtitle:
              "نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية",
          title: Row(
            mainAxisAlignment: .center,
            children: [
              SizedBox(
                width: 301,
                child: Text(
                  'ابحث وتسوق',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF0C0D0D) /* Grayscale-950 */,
                    fontSize: 23,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.bakgroundImage,
    required this.subtitle,
    required this.title,
  });

  final String image, bakgroundImage, subtitle;
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height * 0.55,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(bakgroundImage, fit: BoxFit.fill),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(image),
              ),
              Padding(padding: const EdgeInsets.all(16.0), child: Text("تخط")),
            ],
          ),
        ),
        title,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(subtitle, textAlign: TextAlign.center),
        ),
      ],
    );
  }
}
