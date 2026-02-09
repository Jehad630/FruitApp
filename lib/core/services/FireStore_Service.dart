import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruithub/core/services/Database_Service.dart';

class FirestoreService implements DatabaseService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
    String? documentId,
  }) async {
    if (documentId != null) {
      firestore.collection(path).doc(documentId).set(data);
    } else {
      await firestore.collection(path).add(data);
    }
  }

  @override
  Future<Map<String, dynamic>> getData({
    required String path,
    required String documentId,
  }) async {
    var user = await firestore.collection(path).doc(documentId).get();
    return user.data() as Map<String, dynamic>;
  }

  @override
  Future<bool> checkIfDataExisits({
    required String path,
    required String documentId,
  }) async {
    var user = await firestore.collection(path).doc(documentId).get();
    return user.exists;
  }
}
