import 'package:flutter/material.dart';

class AppColors {
  static Color designColor1 = const Color(0xFFADE5E1);
  static Color buttonColor = const Color(0xFF50C2C9);
  static List<BoxShadow> neumorpShadow = [
    BoxShadow(
        color: Colors.white.withOpacity(0.5),
        spreadRadius: -5,
        offset: const Offset(-5, -5),
        blurRadius: 30),
    BoxShadow(
        color: Colors.blue[900]!.withOpacity(.2),
        spreadRadius: 2,
        offset: const Offset(7, 7),
        blurRadius: 20)
  ];
}
