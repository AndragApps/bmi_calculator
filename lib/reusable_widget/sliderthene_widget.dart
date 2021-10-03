// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../constant.dart';

///Slider Theme Widget
class SliderThemeWidget extends StatelessWidget {
  const SliderThemeWidget({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        trackHeight: 0.5,
        activeTrackColor: kSliderActiveColor,
        inactiveTrackColor: kSliderInActiveColor,
        thumbColor: kSliderActiveColor,
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
        overlayColor: Color(0x29019254),
        overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
      ),
      child: child,
    );
  }
}
