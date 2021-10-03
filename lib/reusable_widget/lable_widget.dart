import 'package:flutter/material.dart';

import '../../constant.dart';

///Set Lable value to a widget like Monthly Investment Amount
class LableWidget extends StatelessWidget {
  const LableWidget({
    Key? key,
    required this.label,
    this.withPadding = true,
  }) : super(key: key);

  final String label;
  final bool? withPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: withPadding == true
          ? const EdgeInsets.only(left: 25.0, top: 5.0, bottom: 5.0)
          : const EdgeInsets.all(0),
      child: Text(
        label,
        style: kTitleTextStyle,
      ),
    );
  }
}
