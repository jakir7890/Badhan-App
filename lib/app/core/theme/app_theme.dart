import 'package:flutter/material.dart';

class ColorConstants {
  static const kPrimaryColor = Color(0xFFffffff);
  static const kSecondaryColor = Color(0xffE7424C);
  static const kBlackColor = Color(0xFF111111);
  static const kGravishBlueColor = Color(0xFF9BA1D2);
  static const kGrey = Color(0xFFDDDDDD);
  static const kTransparent = Colors.transparent;
  static const kGreen = Color(0xff008000);
  static const kGradient = LinearGradient(
      colors: [
        Colors.orangeAccent,
        Colors.red,
        Colors.red,
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      stops: [0.2, 0.8, 0.2]);

  static const kChatGradient = LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [Color(0xffEF5725), Color(0xffC2142B)]);
}
