import 'dart:io';

import 'package:image_picker/image_picker.dart';

class DataBaseHelper{
  File image;
   PickImage() async {

    var pickimage = await ImagePicker.pickImage(source: ImageSource.gallery);

   image=pickimage;

  }


}