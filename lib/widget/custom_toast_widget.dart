import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
customToast({required String text}){
  return Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.white,
        textColor: Colors.black,
        fontSize: 16.0
    );
}