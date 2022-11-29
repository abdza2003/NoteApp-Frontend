import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Themes {
  TextStyle get headline1 {
    return TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      fontFamily: 'Acme-Regular',
    );
  }

  TextStyle get headline2 {
    return TextStyle(
      fontSize: 25,
      color: Colors.white,
      fontWeight: FontWeight.normal,
      fontFamily: 'SecularOne-Regular',
    );
  }
}
