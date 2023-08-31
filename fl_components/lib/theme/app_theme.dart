import 'package:flutter/material.dart';

class Apptheme {
  static const Color primary = Colors.red;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
        primaryColor: primary,
        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 0
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: primary)
        )
  );
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
        primaryColor: primary,
        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 0
        ),
        scaffoldBackgroundColor: Colors.black
  );
}