// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sipcalc/constant.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({Key? key, required this.onTap, required this.buttonLabel})
      : super(key: key);

  final Function() onTap;
  final String buttonLabel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 10.0),
        height: kHeightBottomConainer,
        color: kColorBottomConainer,
        width: double.infinity,
        child: Text(
          buttonLabel,
          style: kHeightTextStyle.copyWith(
            fontSize: 35.0,
          ),
        ),
      ),
    );
  }
}
