import 'package:demoapp/utils/hex_color.dart';
import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static Color get backgroundColor => getColorValues("backgroundColor");
  static Color get greenColor => getColorValues("greenColor");
  static Color get greenAccentColor => getColorValues("greenAccentColor");
  static Color get redColor => getColorValues("redColor");
  static Color get redAccentColor => getColorValues("redAccentColor");
  static Color get blueColor => getColorValues("blueColor");
  static Color get blueAccentColor => getColorValues("blueAccentColor");
  static Color get textColor => getColorValues("textColor");
  static Color get borderColor => getColorValues("borderColor");
  static Color get yellowColor => getColorValues("yellowColor");
  static Color get greyColor => getColorValues("greyColor");

  static Color getColorValues(colorName) {
    return HexColor(coreAppColor()[colorName]!);
  }

  static Map<String, String> coreAppColor() {
    return {
      "backgroundColor": "#FFFFFF",
      "borderColor": "#faf8fc",
      "textColor": "#000000",
      "greenColor": "#24d6a5",
      "greenAccentColor": "#eafde9",
      "redColor": "#ff4e63",
      "redAccentColor": "#fff3f1",
      "blueColor": "#4b38f0",
      "blueAccentColor": "#edebfd",
      "yellowColor": "#f1e15b",
      "greyColor": "#757575"
    };
  }
}
