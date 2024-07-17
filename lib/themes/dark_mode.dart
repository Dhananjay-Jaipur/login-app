import 'package:flutter/material.dart';

ThemeData DarkMode = ThemeData(

  colorScheme: ColorScheme.dark(
    brightness: Brightness.dark,
    background: Colors.white10,
    primary: Colors.white70,
    secondary: Colors.white54,
    inversePrimary: Colors.white,
  ),

  textTheme: ThemeData.dark().textTheme.apply(
    bodyColor: Colors.white,
      displayColor: Colors.white24,
  ),

);