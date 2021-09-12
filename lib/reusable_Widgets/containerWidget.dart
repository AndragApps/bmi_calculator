import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  ReusableContainer({required this.backgroundColor});
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(15.0)),
      ),
    );
  }
}
