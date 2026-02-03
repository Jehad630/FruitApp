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

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      var user = await firebaseAuthService.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Right(UserModel.fromfirebaseUser(user as dynamic));
    } on customeException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      log(
        "excrption in firebase auth service signInWithEmailAndPassword : ${e.toString()}",
      );
      return Left(ServerFailure(" هناك خطاء: ${e.toString()}"));
    }
  }
  /*
  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    try {
      var user = await firebaseAuthService.signInWithGoogle();
      return Right(UserModel.fromfirebaseUser(user as dynamic));
    } on customeException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      log(
        "excrption in firebase auth service signInWithGoogle : ${e.toString()}",
      );
      return Left(ServerFailure(" هناك خطاء: ${e.toString()}"));
    }
  }*/

  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    try {
      var user = await firebaseAuthService.signInWithFacebook();
      return Right(UserModel.fromfirebaseUser(user as dynamic));
    } on customeException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      log(
        "excrption in firebase auth service signInWithFacebook : ${e.toString()}",
      );
      return Left(ServerFailure(" هناك خطاء: ${e.toString()}"));
    }
  }
}
