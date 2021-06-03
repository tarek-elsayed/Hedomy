import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

class DataBaseHelper {
  File image;

  Future<void> pickImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.getImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      image = File(pickedImage.path);
      uploadImage();
    } else {
      print('No Image selected');
    }
  }

  void uploadImage() {
    FirebaseStorage.instance
        .ref()
        .child('users/${Uri.file(image.path).pathSegments.last}')
        .putFile(image)
        .then((value) {
      value.ref.getDownloadURL().then((value) {
        print('url $value');
      });
    }).catchError((error) {});
  }
}
