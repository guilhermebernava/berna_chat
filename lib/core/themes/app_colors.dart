import 'package:flutter/material.dart';

class AppColors {
  static const darkPrimary = Color(0xff2D016E);
  static const primary = Color(0xff6202ee);
  static const secundary = Color(0xffffc120);
  static const white = Color(0xfff1f1f6);
  static const black = Color(0xff111111);
  static const lightBlack = Color(0xff333333);

  static const _color = 0xff6202ee;

  static const Map<int, Color> _colors = {
    50: Color.fromRGBO(98, 2, 238, 0.098),
    100: Color.fromRGBO(98, 2, 238, .2),
    200: Color.fromRGBO(98, 2, 238, .3),
    300: Color.fromRGBO(98, 2, 238, .4),
    400: Color.fromRGBO(98, 2, 238, .5),
    500: Color.fromRGBO(98, 2, 238, .6),
    600: Color.fromRGBO(98, 2, 238, .7),
    700: Color.fromRGBO(98, 2, 238, .8),
    800: Color.fromRGBO(98, 2, 238, .9),
    900: Color.fromRGBO(98, 2, 238, 1),
  };

  static const materialColor = MaterialColor(_color, _colors);
}
