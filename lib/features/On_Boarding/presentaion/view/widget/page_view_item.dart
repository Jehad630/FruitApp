import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.bakgroundImage,
    required this.subtitle,
    required this.title,
    required this.isvisible,
  });

  final String image, bakgroundImage, subtitle;
  final Widget title;
  final bool isvisible;

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
              Visibility(
                visible: isvisible,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("تخط"),
                ),
              ),
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
