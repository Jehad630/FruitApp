import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruithub/core/Funcetion/build_error_bar.dart';
import 'package:fruithub/features/Auth/presentaion/cubits/sign_in_cubit/sign_in_cubit.dart';
import 'package:fruithub/features/Auth/presentaion/view/widget/login_view_body.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignIn_viewBody_BlocConsumer extends StatelessWidget {
  const SignIn_viewBody_BlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is SignInSuccess) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('تم تسجيل الدخول بنجاح!')));
        } else if (state is SignInFailure) {
          // Show error message
          buildErrorBar(context, state.errorMessage);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is SignInLoading ? true : false,
          child: LoginViewBody(),
        );
      },
    );
  }
}
