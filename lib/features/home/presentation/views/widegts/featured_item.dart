import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg;
import 'package:fruithub/core/utils/app_images.dart';
import 'package:fruithub/core/utils/app_text_styles.dart';
import 'package:fruithub/features/home/presentation/views/widegts/featured_item__button.dart';
import 'package:svg_flutter/svg.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    var itemwidth = MediaQuery.sizeOf(context).width;
    return Container(
      width: itemwidth,
      child: AspectRatio(
        aspectRatio: 342 / 158,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              bottom: 0,
              right: itemwidth * .4,
              child: SvgPicture.asset(
                Assets.assetsImagesPageViewItem2Image,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              width: itemwidth * .5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: svg.Svg(Assets.assetsImagesFeaturedItemBackground),
                  fit: BoxFit.fill,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 33.0),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    const SizedBox(height: 25),
                    Text(
                      "عروض العيد",
                      style: TextStyles.regular13.copyWith(color: Colors.white),
                    ),
                    const Spacer(),

                    Text(
                      "خصم 25% ",
                      style: TextStyles.bold19.copyWith(color: Colors.white),
                    ),
                    const SizedBox(height: 11),
                    const Spacer(),
                    const FeaturedItem_Button(),
                    const SizedBox(height: 29),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
