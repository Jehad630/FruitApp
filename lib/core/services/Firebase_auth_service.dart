import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
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
      log(
        "excrption in firebase auth service createUserWithEmailAndPassword : ${e.toString()}",
      );
      if (e.code == 'weak-password') {
        throw customeException(message: 'كلمة المرور ضعيفة جداً.');
      } else if (e.code == 'email-already-in-use') {
        throw customeException(
          message: 'لديك حساب مسجل بهذا البريد الإلكتروني.',
        );
      } else if (e.code == "network-request-failed") {
        throw customeException(message: "لا يوجد اتصال بالإنترنت.");
      } else {
        throw customeException(message: "هناك خطاء: ${e.message}");
      }
    } catch (e) {
      log(
        "excrption in firebase auth service createUserWithEmailAndPassword : ${e.toString()}",
      );
      throw customeException(message: " هناك خطاء: ${e.toString()}");
    }
  }

  Future<User> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final Credential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Credential.user!;
    } on FirebaseAuthException catch (e) {
      log(
        "excrption in firebase auth service signInWithEmailAndPassword : ${e.toString()}",
      );
      if (e.code == 'user-not-found') {
        throw customeException(
          message: 'لا يوجد مستخدم بهذا البريد الإلكتروني.',
        );
      } else if (e.code == 'wrong-password' || e.code == 'invalid-email') {
        throw customeException(
          message: 'كلمة المرور غير صحيحة أو البريد الإلكتروني غير صحيح',
        );
      } else if (e.code == "network-request-failed") {
        throw customeException(message: "لا يوجد اتصال بالإنترنت.");
      } else {
        throw customeException(message: "هناك خطاء: ${e.message}");
      }
    } catch (e) {
      log(
        "excrption in firebase auth service signInWithEmailAndPassword : ${e.toString()}",
      );
      throw customeException(message: " هناك خطاء: ${e.toString()}");
    }
  }
  /*
  Future<User> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // If the user cancels the sign-in dialog
      if (googleUser == null) {
        throw customeException(message: "تم إلغاء تسجيل الدخول.");
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final userCredential = await _auth.signInWithCredential(credential);
      return userCredential.user!;
    } on FirebaseAuthException catch (e) {
      log(
        "excrption in firebase auth service signInWithGoogle : ${e.toString()}",
      );
      throw customeException(message: "هناك خطاء: ${e.message}");
    } catch (e) {
      log(
        "excrption in firebase auth service signInWithGoogle : ${e.toString()}",
      );
      throw customeException(message: " هناك خطاء: ${e.toString()}");
    }
  }*/

  Future<User> signInWithFacebook() async {
    // Trigger the sign-in flow
    final LoginResult loginResult = await FacebookAuth.instance.login();

    // Create a credential from the access token
    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.tokenString);

    // Once signed in, return the UserCredential
    return (await FirebaseAuth.instance.signInWithCredential(
      facebookAuthCredential,
    )).user!;
  }
}
