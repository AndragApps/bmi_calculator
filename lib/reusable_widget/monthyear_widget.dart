// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sipcalc/reusable_widget/container_widget.dart';
import 'package:sipcalc/reusable_widget/iconbutton_widget.dart';
import 'package:sipcalc/reusable_widget/lable_widget.dart';
import 'package:sipcalc/reusable_widget/number_widget.dart';

class MonthYearWidget extends StatelessWidget {
  const MonthYearWidget({
    Key? key,
    this.month,
    this.year,
    required this.label,
    this.withPadding = true,
    required this.onPressAdd,
    required this.onPressRemove,
  }) : super(key: key);

  final int? month;
  final int? year;
  final String label;
  final bool? withPadding;
  final dynamic Function() onPressAdd;
  final dynamic Function() onPressRemove;

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            LableWidget(
              label: " $label",
              withPadding: withPadding,
            ),
            SizedBox(
              height: 8.0,
            ),
            NumberWidget(
              intValue: (month ?? year),
              withPadding: withPadding,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
              icon: Icons.remove,
              onPress: onPressRemove,
            ),
            RoundIconButton(
              icon: Icons.add,
              onPress: onPressAdd,
            ),
          ],
        ),
      ],
    );
  }
}
