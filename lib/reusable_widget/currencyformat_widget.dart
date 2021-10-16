// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sipcalc/constant.dart';
import 'package:sipcalc/reusable_widget/lable_widget.dart';

class CurrencyFormatWidget extends StatelessWidget {
  const CurrencyFormatWidget({
    Key? key,
    required this.amountInInt,
    required this.lable,
    this.locale = "en_IN",
    this.decimalDigits = 0,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.withPadding = true,
  }) : super(key: key);

  final int amountInInt;
  final String locale;
  final int? decimalDigits;
  final String lable;
  final CrossAxisAlignment crossAxisAlignment;
  final bool? withPadding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: withPadding == true
          ? const EdgeInsets.only(left: 25.0)
          : const EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: crossAxisAlignment,
        children: [
          LableWidget(
            label: lable,
            withPadding: false,
          ),
          FittedBox(
            child: Text(
              NumberFormat.currency(
                locale: locale,
                decimalDigits: decimalDigits,
              ).format(
                amountInInt,
              ),
              style: kNumberStyle,
            ),
          ),
        ],
      ),
    );
  }
}
