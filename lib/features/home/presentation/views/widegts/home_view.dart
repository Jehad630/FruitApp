import 'package:flutter/material.dart';
import 'package:fruithub/features/home/presentation/views/widegts/custom_home_appbar.dart';

class homeview_body extends StatelessWidget {
  const homeview_body({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [SliverToBoxAdapter(child: Custom_home_appbar())],
    );
  }
}
