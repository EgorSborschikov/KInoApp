import 'package:flutter/material.dart';

const _primaryColor = Color.fromARGB(255, 205, 218, 27);

const _textTheme = TextTheme(
  titleMedium: TextStyle(
    fontSize: 16,
    fontFamily: 'kokoro',
    fontWeight: FontWeight.w600,
  ),
  headlineLarge: TextStyle(
    fontSize: 22,
    fontFamily: 'Ubuntu',
    fontWeight: FontWeight.bold,
  )
);

final darkTheme = ThemeData(
  useMaterial3: true,
  primaryColor: _primaryColor,
  textTheme: _textTheme,
  scaffoldBackgroundColor: Colors.black,
  colorScheme: ColorScheme.fromSeed(
    seedColor: _primaryColor,
    brightness: Brightness.dark,
    surface: Colors.black,
  ),
);

final lightTheme = ThemeData(
  useMaterial3: true,
  primaryColor: _primaryColor,
  textTheme: _textTheme,
  scaffoldBackgroundColor: Colors.white,
  dividerTheme: DividerThemeData(
    color: Colors.grey.withOpacity(0.1),
  ),
  colorScheme: ColorScheme.fromSeed(
    seedColor: _primaryColor,
    brightness: Brightness.light,
    surface: Colors.white,
  ),
);