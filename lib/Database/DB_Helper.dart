import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hedomy/UI/aftersignin.dart';
import 'package:hedomy/models/prandModel.dart';
import 'package:hedomy/models/userModel.dart';
import 'package:image_picker/image_picker.dart';
import 'constrain.dart';

UserModel userModel;
PrandModel prandModel;

class DataBaseHelper {
  DataBaseHelper(final userObj) {
    userModel = userObj;
  }

  pickImage() async {
    print('email ${userModel.email}');
    final picker = ImagePicker();
    final pickedImage = await picker.getImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      image = File(pickedImage.path);
        uploadImage();
    } else {
      print('No Image selected');
    }
  }

  uploadImage() async {
    await FirebaseStorage.instance
        .ref()
        .child('users/${Uri.file(image.path).pathSegments.last}')
        .putFile(image)
        .then((value) {
      value.ref.getDownloadURL().then((value) {

        userModel.image = value;
        print('photo ${userModel.image}');

      });
    }).catchError((error) {});
  }

  updateUser(String name, String phone, String email, String image,
      BuildContext context) async {
    if (image == null) {
      uploadImage();
    }

    UserModel model = UserModel(
        name: name, phone: phone, email: email, uid: UID, image: image);
    uploadImage();

    await FirebaseFirestore.instance
        .collection('users')
        .doc(UID)
        .update(model.toMap())
        .then((value) => {
              getUserData(context),
            })
        .catchError((onError) {
      print(onError.toString());
    });
  }

  getUserData(BuildContext context) async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(UID)
        .get()
        .then((value) => {
              userModel = UserModel.fromJson(value.data()),
              print('model ${userModel.name}'),
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AfterSignIn(userModel,prandModel))),
            })
        .catchError((onError) {
      print(onError.toString());
    });
  }
  List<PrandModel> Users = [];
   load() async {
     Users = [];
    await FirebaseFirestore.instance.collection('brand').get()
        .then((value) =>
    {
      // print('val ${value.docs}')
      value.docs.forEach((element) {
       Users.add(PrandModel.fromJson(element.data()));
        print("3333 ${Users.length}");
      }),
    print("2222 ${Users[0].name}"),
    }
    );
    return Users;

  }
}
