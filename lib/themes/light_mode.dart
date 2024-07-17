import 'package:flutter/material.dart';

ThemeData LightMode = ThemeData(

  colorScheme: ColorScheme.light(
    brightness: Brightness.light,
      background: Colors.white60,
      primary: Colors.black87,
      secondary: Colors.black45,
    inversePrimary: Colors.white24
      ),

  textTheme: ThemeData.light().textTheme.apply(
    bodyColor: Colors.black,
    displayColor: Colors.grey,
  ),

);