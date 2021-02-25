import 'package:flutter/material.dart';

import '../models/theme/theme_data.dart';
import 'colors.dart';

class CustomTheme {
  Color colorStatus1;
  Color colorStatus2;

  CustomTheme({this.colorStatus1, this.colorStatus2});

  factory CustomTheme.dark() {
    return CustomTheme(colorStatus1: Colors.red, colorStatus2: Colors.blue);
  }

  factory CustomTheme.light() {
    return CustomTheme(colorStatus1: Colors.white, colorStatus2: Colors.green);
  }

  static getCusTheme(THEME_MODE themeMode) {
    switch(themeMode) {
      case THEME_MODE.DARK:
        return CustomTheme.dark();
        break;
      case THEME_MODE.LIGHT:
        return CustomTheme.light();
        break;
      default:
        break;
    }
  }

}

final ThemeData lightThemeData = ThemeData.light().copyWith(
  brightness: Brightness.light,
  primaryColor: Colors.red,
  primaryColorDark: Colors.red,
  backgroundColor: Colors.white,
  accentColor: Colors.redAccent,
  bottomAppBarColor: Colors.white,
  textTheme: TextTheme(
    subtitle1: TextStyle(
      color: Colors.red,
      fontFamily: 'abc'
    ),
  ),
);

final ThemeData darkThemeData = ThemeData.dark().copyWith(
    brightness: Brightness.light,
    primaryColor: Colors.redAccent,
    primaryColorDark: Colors.red,
    backgroundColor: Colors.red,
    accentColor: Colors.red,
    bottomAppBarColor: Colors.white,
    textTheme: TextTheme(
        subtitle1: TextStyle(
            color: Colors.red,
            fontFamily: 'abc'
        )
    ).apply(
      bodyColor: AppColor.text
    )
);
