import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  ReusableContainer({
    this.backgroundColor,
    this.cardChild,
    this.onTapFunction,
  });

  final Color? backgroundColor;
  final Widget? cardChild;
  final Function()? onTapFunction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunction,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(15.0)),
        child: cardChild,
      ),
    );
  }
}
