import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData.light().copyWith(

      // AppBar Theme
      appBarTheme: const AppBarTheme(
        color: Colors.green,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        shape: const StadiumBorder(),
        elevation: 5,
      )),
      
      );
}
