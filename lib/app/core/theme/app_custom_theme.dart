import 'package:flutter/material.dart';

class AppCustomTheme {
  static final lightTheme = ThemeData(
    primarySwatch: Colors.indigo,
    useMaterial3: true,
  );
  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.indigo,
    useMaterial3: true,
    textTheme: textThemeDark,
    scaffoldBackgroundColor: const Color(0xff202124),
  );

  static const textThemeDark = TextTheme(
    bodyLarge: TextStyle(color: Colors.white, fontFamily: 'Roboto Mono'),
    bodySmall: TextStyle(color: Colors.white, fontFamily: 'Roboto Mono'),
    bodyMedium: TextStyle(color: Colors.white, fontFamily: 'Roboto Mono'),
    displayLarge: TextStyle(color: Colors.white, fontFamily: 'Roboto Mono'),
    displayMedium: TextStyle(color: Colors.white, fontFamily: 'Roboto Mono'),
    displaySmall: TextStyle(color: Colors.white, fontFamily: 'Roboto Mono'),
    headlineLarge: TextStyle(color: Colors.white, fontFamily: 'Roboto Mono'),
    headlineMedium: TextStyle(color: Colors.white, fontFamily: 'Roboto Mono'),
    headlineSmall: TextStyle(color: Colors.white, fontFamily: 'Roboto Mono'),
    titleLarge: TextStyle(color: Colors.white, fontFamily: 'Roboto Mono'),
    titleMedium: TextStyle(color: Colors.white, fontFamily: 'Roboto Mono'),
    titleSmall: TextStyle(color: Colors.white, fontFamily: 'Roboto Mono'),
    labelLarge: TextStyle(color: Colors.white, fontFamily: 'Roboto Mono'),
    labelMedium: TextStyle(color: Colors.white, fontFamily: 'Roboto Mono'),
    labelSmall: TextStyle(color: Colors.white, fontFamily: 'Roboto Mono'),
  );
}
