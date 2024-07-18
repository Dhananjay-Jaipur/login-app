import 'package:flutter/material.dart';
import 'package:login/pages/login.dart';
import 'package:login/pages/signup.dart';
import 'package:login/pages/homePage.dart';
import 'package:login/themes/light_mode.dart';
import 'package:login/themes/dark_mode.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:login/firebase_options.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: login(),
      theme: LightMode,
      darkTheme: DarkMode,
    );
  }
}