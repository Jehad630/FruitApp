import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruithub/core/services/Database_Service.dart';
import 'package:fruithub/features/Auth/data/models/user_model.dart';
import 'package:fruithub/features/Auth/domain/entites/user_entity.dart';

class FirestoreService implements DatabaseService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    await firestore.collection(path).add(data);
  }

  @override
  Future<UserEntity> getUserData({
    required String path,
    required String uId,
  }) async {
    var user = await firestore.collection(path).doc(uId).get();
    return UserModel.fromJson(user.data() as Map<String, dynamic>);
  }
}
