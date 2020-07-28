import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

addphoto() {
  Fluttertoast.showToast(
      msg: "Open Camera",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 2,
      backgroundColor: Colors.pink,
      textColor: Colors.white,
      fontSize: 16.0);
}

bookmark() {
  Fluttertoast.showToast(
      msg: "BookMark Added",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 2,
      backgroundColor: Colors.pink,
      textColor: Colors.white,
      fontSize: 16.0);
}

ZoomImage() {
  print('This IS AYUSH');
}
