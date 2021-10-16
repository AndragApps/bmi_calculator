import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    this.icon = FontAwesomeIcons.airbnb,
    this.title = kDefaultTitle,
  });

  final IconData? icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
          color: kIconColor,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(title, style: kTitleTextStyle),
      ],
    );
  }
}
