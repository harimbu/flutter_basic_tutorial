import 'package:flutter/material.dart';

class AppThemme {
  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
      elevation: 0,
    ),
  );
  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
  );
}
