import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    fontFamily: "Poppins",
    colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff6C63FF)),
  );

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    fontFamily: "Poppins",
    colorScheme: ColorScheme.fromSeed(
      seedColor: Color(0xff8F80FF),
      brightness: Brightness.dark,
    ),
  );
}
