// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sipcalc/constant.dart';
import 'package:sipcalc/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: kDebugShowCheckedModeBanner,
      title: kTitle,
      home: SplashScreen(),
    );
  }
}
