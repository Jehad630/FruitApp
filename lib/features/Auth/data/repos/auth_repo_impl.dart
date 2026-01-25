import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:fruithub/core/errors/Excpetion.dart';
import 'package:fruithub/core/errors/faliures.dart';
import 'package:fruithub/core/services/Firebase_auth_service.dart';
import 'package:fruithub/features/Auth/data/models/user_model.dart';
import 'package:fruithub/features/Auth/domain/entites/user_entity.dart';
import 'package:fruithub/features/Auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;
  AuthRepoImpl({required this.firebaseAuthService});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    try {
      var user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Right(UserModel.fromfirebaseUser(user));
    } on customeException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      log(
        "excrption in firebase auth service createUserWithEmailAndPassword : ${e.toString()}",
      );
      return Left(ServerFailure(" هناك خطاء: ${e.toString()}"));
    }
  }
}
