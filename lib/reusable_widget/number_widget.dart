// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../constant.dart';

///Set Value to a widget like the amount.
///
class NumberWidget extends StatelessWidget {
  const NumberWidget({
    Key? key,
    this.doubleValue,
    this.intValue,
    this.stringValue,
    this.withPadding = true,
  }) : super(key: key);

  final bool? withPadding;
  final String? stringValue;
  final double? doubleValue;
  final int? intValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: withPadding == true
          ? const EdgeInsets.only(left: 25.0)
          : const EdgeInsets.all(0),
      child: Text(
        "${doubleValue ?? (intValue ?? stringValue)}",
        style: kNumberStyle,
      ),
    );
  }
}
