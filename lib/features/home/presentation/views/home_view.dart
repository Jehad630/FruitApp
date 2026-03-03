import 'package:flutter/material.dart';
import 'package:fruithub/features/home/presentation/views/widegts/home_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const String routeName = 'homeview';

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: const homeview_body()));
  }
}
