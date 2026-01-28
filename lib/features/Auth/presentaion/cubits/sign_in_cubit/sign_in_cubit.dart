import 'package:bloc/bloc.dart';
import 'package:fruithub/features/Auth/domain/entites/user_entity.dart';
import 'package:fruithub/features/Auth/domain/repos/auth_repo.dart';
import 'package:meta/meta.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this.authRepo) : super(SignInInitial());

  final AuthRepo authRepo;

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    emit(SignInLoading());
    final result = await authRepo.signInWithEmailAndPassword(email, password);
    result.fold(
      (failure) {
        emit(SignInFailure(failure.message));
      },
      (user) {
        emit(SignInSuccess(user));
      },
    );
  }

  /*
    Future<void> signinWithGoogle() async {
    emit(SignInLoading());
    var result = await authRepo.signinWithGoogle();
    result.fold(
      (failure) => emit(SignInFailure(message: failure.message)),
      (userEntity) => emit(SignInSuccess(userEntity: userEntity)),
    );
  }

  Future<void> signinWithFacebook() async {
    emit(SignInLoading());
    var result = await authRepo.signinWithFacebook();
    result.fold(
      (failure) => emit(SignInFailure(message: failure.message)),
      (userEntity) => emit(SignInSuccess(userEntity: userEntity)),
    );
  }

  Future<void> signinWithApple() async {
    emit(SignInLoading());
    var result = await authRepo.signinWithApple();
    result.fold(
      (failure) => emit(SignInFailure(message: failure.message)),
      (userEntity) => emit(SignInSuccess(userEntity: userEntity)),
    );
  }*/
}
