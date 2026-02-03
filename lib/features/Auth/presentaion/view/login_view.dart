import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruithub/core/Widgets/Custom_AppBar.dart';
import 'package:fruithub/core/services/get_it_service.dart';
import 'package:fruithub/features/Auth/domain/repos/auth_repo.dart';
import 'package:fruithub/features/Auth/presentaion/cubits/sign_in_cubit/sign_in_cubit.dart';
import 'package:fruithub/features/Auth/presentaion/view/widget/sign_in_view_body__bloc_consumer.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const String routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: BuildAppbar(context, title: "تسجيل الدخول"),
        body: SignIn_viewBody_BlocConsumer(),
      ),
    );
  }
}
