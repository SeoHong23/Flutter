import 'package:flutter/material.dart';

MaterialColor primaryWhite = MaterialColor(
  0xFFFFFFFF,
  <int, Color>{
    50: Color(0xFFE3F2FD), // Light Blue 50
    100: Color(0xFFBBDEFB), // Light Blue 100
    200: Color(0xFF90CAF9), // Light Blue 200
    300: Color(0xFF64B5F6), // Light Blue 300
    400: Color(0xFF42A5F5), // Light Blue 400
    500: Color(0xFF2196F3), // Primary Blue (Default)
    600: Color(0xFF1E88E5), // Blue 600
    700: Color(0xFF1976D2), // Blue 700
    800: Color(0xFF1565C0), // Blue 800
    900: Color(0xFF0D47A1), // Dark Blue 900
  },
);

ThemeData themeData() {
  return ThemeData(
    primarySwatch: primaryWhite,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.green),
    ),
  );
}
