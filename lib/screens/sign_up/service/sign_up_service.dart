import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:recycle_app_hackathon/screens/login/view/login_view.dart';

class AuthService {
  final userCollection = FirebaseFirestore.instance.collection("users");
  final firebaseAuth = FirebaseAuth.instance;

  Future<void> signUp(BuildContext context,
      {required String name,
      required String mail,
      required String password}) async {
    try {
      final UserCredential userCredential = await firebaseAuth
          .createUserWithEmailAndPassword(email: mail, password: password);
      if (userCredential.user != null) {
        _registerUser(name: name, mail: mail, password: password);
      }
    } on FirebaseAuthException catch (e) {
      Fluttertoast.showToast(msg: e.message!);
    }
  }

  Future<void> _registerUser(
      {required String name,
      required String mail,
      required String password}) async {
    await userCollection.doc().set({
      "email": mail,
      "name": name,
      "password": password,
    });
  }
}
