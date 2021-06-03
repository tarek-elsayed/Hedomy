import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

import '../UI/aftersignin.dart';

signUp(String email, String password, String name, String phone,BuildContext context) {
  FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: email,
    password: password,
  ).then((value) =>
  {
    loadData(value.user.uid, name, phone, email ,context),

  }).catchError((onError) => {
    print(onError.toString()),
  });
}

loadData(String id, String name, String phone, String email,BuildContext context) {
  final obj = {
    "name": name,
    "email": email,
    'phone': phone,
    "uId": id,
  };
  FirebaseFirestore.instance.collection("users").doc(id).set(obj).then((value) => {
    Navigator.push(context,MaterialPageRoute(builder: (context) => AfterSignIn(obj))),

  });
}