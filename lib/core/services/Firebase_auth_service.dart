import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruithub/core/errors/Excpetion.dart';

class FirebaseAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final Credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw customeException(message: 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw customeException(
          message: 'The account already exists for that email.',
        );
      } else {
        throw customeException(message: "an error occurred: ${e.message}");
      }
    } catch (e) {
      throw customeException(message: " An unknown error occurred.");
    }
  }
}
