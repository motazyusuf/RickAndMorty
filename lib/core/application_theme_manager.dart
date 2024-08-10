import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static const Color primaryColor = Color(0xff5d9cec);
  static const Color deviceSystemNavigationBarLight = Color(0xffdfecdb);
  static const Color deviceSystemNavigationBarDark = Color(0xFF141922);

  static ThemeData lightTheme = ThemeData(
      appBarTheme: AppBarTheme(
          color: Color(0xff62a4ab),
          iconTheme: IconThemeData(color: Colors.white)));

  static ThemeData darkTheme = ThemeData();
}
