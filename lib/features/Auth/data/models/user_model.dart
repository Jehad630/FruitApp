import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruithub/features/Auth/domain/entites/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({required super.email, required super.uId, required super.name});
  factory UserModel.fromfirebaseUser(User user) {
    return UserModel(
      email: user.email ?? "",
      uId: user.uid,
      name: user.displayName ?? "",
    );
  }
}
