import 'package:flutter/material.dart';
import 'package:fruithub/features/home/presentation/views/widegts/custom_home_appbar.dart';
import 'package:fruithub/features/home/presentation/views/widegts/featured_item.dart';
import 'package:fruithub/features/home/presentation/views/widegts/serach_text_filed.dart';

class homeview_body extends StatelessWidget {
  const homeview_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(height: 16),
                const Custom_home_appbar(),
                const SerachTextFiled(),
                const SizedBox(height: 12),
                const FeaturedItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
