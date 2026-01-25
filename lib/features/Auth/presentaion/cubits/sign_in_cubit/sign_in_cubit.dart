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
}
