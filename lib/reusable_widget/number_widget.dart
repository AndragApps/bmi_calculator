// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../constant.dart';

///Set Value to a widget like the amount.
///
class NumberWidget extends StatelessWidget {
  const NumberWidget({
    Key? key,
    this.withPadding = true,
    this.doubleValue,
    this.intValue,
  }) : super(key: key);

  final bool? withPadding;
  final double? doubleValue;
  final int? intValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: withPadding == true
          ? const EdgeInsets.only(left: 25.0)
          : const EdgeInsets.all(0),
      child: Text(
        toStringValue(),
        style: kNumberStyle,
      ),
    );
  }

  String toStringValue() {
    if (doubleValue != null) {
      return doubleValue!.toStringAsFixed(2);
    } else {
      return (intValue! <= 9 ? "0$intValue" : intValue).toString();
    }
  }
}
