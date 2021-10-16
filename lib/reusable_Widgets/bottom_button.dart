import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap, required this.buttonLabel});

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
