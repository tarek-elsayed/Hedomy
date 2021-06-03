import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hedomy/UI/aftersignin.dart';
import 'package:hedomy/models/userModel.dart';

UserModel userModel;

signIn(String email, String password, BuildContext context) {
  FirebaseAuth.instance
      .signInWithEmailAndPassword(email: email, password: password)
      .then((value) => {
            FirebaseFirestore.instance
                .collection('users')
                .doc(value.user.uid)
                .get()
                .then((value) => {
                      userModel = UserModel.fromJson(value.data()),
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AfterSignIn(userModel))),
                    }),
          });
}
