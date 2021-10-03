// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sipcalc/constant.dart';
import 'package:sipcalc/screens/splash_screen/splash_body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryDarkColor,
      body: SafeArea(
        child: SplashBodyWidget(),
      ),
    );
  }
}
