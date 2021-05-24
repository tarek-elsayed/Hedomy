import 'package:flutter/material.dart';
import 'package:hedomy/UI/login.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
    title: "Hedomy",
    home: login(),
    //Guest(),
  ));
}
