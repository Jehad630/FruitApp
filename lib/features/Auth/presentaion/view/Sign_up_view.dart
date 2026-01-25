import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruithub/core/Widgets/Custom_AppBar.dart';
import 'package:fruithub/core/services/get_it_service.dart';
import 'package:fruithub/features/Auth/presentaion/cubits/sign_up_cubits/sign_up_cubit.dart';
import 'package:fruithub/features/Auth/domain/repos/auth_repo.dart';
import 'package:fruithub/features/Auth/presentaion/view/signup_view_body_bloc_consumer.dart';
import 'package:fruithub/features/Auth/presentaion/view/widget/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  static const String routeName = 'signUp';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: BuildAppbar(context, title: " حساب جديد "),
        body: signup_view_body_bloc_consumer(),
      ),
    );
  }
}
