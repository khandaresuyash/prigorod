import 'package:flutter/material.dart';

abstract class Colour {
  static const Color yellow = Color(0xFFFF9F1C);
  static const Color lightYellow = Color(0xFFFFBF69);
  static const Color cyan = Color(0xFF2EC4B6);
  static const Color lightCyan = Color(0xFFCBF3F0);
  static const Color red = Color(0xFFFF3737);
}

screenHeight(BuildContext context) => MediaQuery.of(context).size.height;
screenWidth(BuildContext context) => MediaQuery.of(context).size.width;