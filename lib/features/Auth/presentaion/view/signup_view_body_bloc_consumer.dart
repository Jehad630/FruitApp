import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruithub/features/Auth/presentaion/cubits/sign_up_cubits/sign_up_cubit.dart';
import 'package:fruithub/features/Auth/presentaion/view/widget/sign_up_view_body.dart';

class signup_view_body_bloc_consumer extends StatelessWidget {
  const signup_view_body_bloc_consumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        // TODO: implement listener
      },
    
      builder: (context, state) {
        return const SignUpViewBody();
      },
    );
  }
}
