import 'package:flutter/material.dart';
import 'package:fruithub/core/constants/constants.dart';
import 'package:fruithub/core/services/shared_prefrences_singleton.dart';
import 'package:fruithub/core/utils/app_text_styles.dart';
import 'package:fruithub/features/Auth/presentaion/view/login_view.dart';
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
                child: GestureDetector(
                  onTap: () {
                    Prefs.setbool(KisOnBoadringViewSeen, true);

                    Navigator.of(
                      context,
                    ).pushReplacementNamed(LoginView.routeName);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "تخط",
                      style: TextStyles.regular13.copyWith(
                        color: Color(0xFF949D9E),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        title,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyles.semiBold13.copyWith(color: Color(0xFF4E5456)),
          ),
        ),
      ],
    );
  }
}
