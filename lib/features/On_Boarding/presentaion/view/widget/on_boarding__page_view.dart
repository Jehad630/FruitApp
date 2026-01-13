import 'package:flutter/material.dart';
import 'package:fruithub/core/utils/App_colors.dart';
import 'package:fruithub/core/utils/app_images.dart';
import 'package:fruithub/core/utils/app_text_styles.dart';
import 'package:fruithub/features/On_Boarding/presentaion/view/widget/page_view_item.dart';

class on_boarding_PageView extends StatelessWidget {
  const on_boarding_PageView({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          image: Assets.assetsImagesPageViewItem1Image,
          bakgroundImage: Assets.assetsImagesPageViewItem1BackgroundImage,
          subtitle:
              "اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
          title: Row(
            mainAxisAlignment: .center,
            children: [
              Text("مرحبًا بك في ", style: TextStyles.bold23),
              Text(
                " HUB",
                style: TextStyles.bold23.copyWith(
                  color: AppColors.secondaryColor,
                ),
              ),
              Text(
                "Fruit",
                style: TextStyles.bold23.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
          isvisible: true,
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
          isvisible: false,
        ),
      ],
    );
  }
}
