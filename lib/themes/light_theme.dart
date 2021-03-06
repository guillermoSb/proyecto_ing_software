import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static const primary = Color.fromRGBO(108, 140, 191, 1);
  static const secondary = Color.fromRGBO(254, 241, 185, 1);

  static const textDark = Color.fromRGBO(31, 19, 56, 1);
  static const textLight = Color.fromRGBO(255, 255, 255, 1);

  static const background = Color.fromRGBO(242, 246, 255, 1);

  static const CupertinoThemeData lightTheme = CupertinoThemeData(
      barBackgroundColor: secondary,
      primaryColor: primary,
      primaryContrastingColor: textLight,
      scaffoldBackgroundColor: background);
}
