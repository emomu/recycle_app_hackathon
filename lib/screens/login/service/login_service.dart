import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:recycle_app_hackathon/screens/login/view/text_login_successful.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginService {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  Future<void> signIn(BuildContext context,
      {required String mail, required String password}) async {
    try {
      final UserCredential userCredential = await firebaseAuth
          .signInWithEmailAndPassword(email: mail, password: password);
      if (userCredential.user != null) {
        Navigator.of(context).pushReplacement(
            (MaterialPageRoute(builder: (context) => LoginSuccessful())));
      }
    } on FirebaseAuthException catch (e) {
      Fluttertoast.showToast(msg: e.message!);
    }
  }

  Future<User?> signInWithGoogle() async {
    //Oturum açma işlemini başlatma
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

    //Süreç içerisinden bilgileri al
    final GoogleSignInAuthentication gAuth = await gUser!.authentication;

    //Kullanıcı nesnesi oluştur
    final credential = GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken, idToken: gAuth.idToken);

    //Kullanıcı girişini sağla
    final UserCredential userCredential =
        await firebaseAuth.signInWithCredential(credential);

    return userCredential.user;
  }
}
