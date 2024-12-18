import 'package:flutter/material.dart';

const _primaryColor = Color.fromARGB(255, 205, 218, 27);

const _textTheme = TextTheme(
  titleMedium: TextStyle(
    fontSize: 20,
    fontFamily: 'kokoro',
    fontWeight: FontWeight.w600,
  ),
  headlineLarge: TextStyle(
    fontSize: 28,
    fontFamily: 'kokoro',
    fontWeight: FontWeight.w800,
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