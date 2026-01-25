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
        throw customeException(message: 'كلمة المرور ضعيفة جداً.');
      } else if (e.code == 'email-already-in-use') {
        throw customeException(
          message: 'لديك حساب مسجل بهذا البريد الإلكتروني.',
        );
      } else {
        throw customeException(message: "هناك خطاء: ${e.message}");
      }
    } catch (e) {
      throw customeException(message: " هناك خطاء: ${e.toString()}");
    }
  }
}
