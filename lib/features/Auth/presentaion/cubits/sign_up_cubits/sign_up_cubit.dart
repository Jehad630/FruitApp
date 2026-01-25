import 'package:bloc/bloc.dart';
import 'package:fruithub/features/Auth/domain/entites/user_entity.dart';
import 'package:fruithub/features/Auth/domain/repos/auth_repo.dart';
import 'package:meta/meta.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.authRepo) : super(SignUpInitial());

  final AuthRepo authRepo;

  Future<void> createUserWithEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    emit(SignUpLoading());
    final result = await authRepo.createUserWithEmailAndPassword(
      email,
      password,
      name,
    );
    result.fold(
      (failure) => emit(SignUpFailure(errorMessage: failure.message)),
      (userEntity) => emit(SignUpSuccess(userEntity: userEntity)),
    );
  }
}
