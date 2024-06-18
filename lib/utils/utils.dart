import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {
  static const double _fontSixteen = 16;
  static const double _fontFourteen = 14;

  static TextStyle f16Bold = const TextStyle(
    fontSize: _fontSixteen,
    fontWeight: FontWeight.bold,
  );

  static TextStyle f16MeBold = const TextStyle(
    fontSize: _fontSixteen,
    fontWeight: FontWeight.w500,
  );

  static TextStyle f14Normal = const TextStyle(
    fontSize: _fontFourteen,
    fontWeight: FontWeight.w400,
  );

  static toast({String? msg, bool? status}) {
    return Fluttertoast.showToast(
      msg: msg.toString(),
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.white,
      textColor: status == false ? Colors.red : Colors.black,
      fontSize: 16.0,
    );
  }
}
