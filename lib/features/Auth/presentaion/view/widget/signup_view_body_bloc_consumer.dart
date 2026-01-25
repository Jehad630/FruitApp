import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruithub/core/Funcetion/build_error_bar.dart';
import 'package:fruithub/features/Auth/presentaion/cubits/sign_up_cubits/sign_up_cubit.dart';
import 'package:fruithub/features/Auth/presentaion/view/widget/sign_up_view_body.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class signup_view_body_bloc_consumer extends StatelessWidget {
  const signup_view_body_bloc_consumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('تم إنشاء الحساب بنجاح!')));
        } else if (state is SignUpFailure) {
          // Show error message
          buildErrorBar(context, state.errorMessage);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is SignUpLoading ? true : false,
          child: const SignUpViewBody(),
        );
      },
    );
  }

 
}
