import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

///START CONST PROPETIES.

const defaultCardBackgroundColor = Color(0XFF1D1E33);
const defaultCardFontColor = Color(0xFF8D8E98);
const defaultIconColor = Colors.white;
const defaultTitle = 'DEFAULT VALUE';

///ENDS CONST PROPETIES.

class CardWidget extends StatelessWidget {
  const CardWidget({
    this.iconColor = defaultIconColor,
    this.icon = FontAwesomeIcons.airbnb,
    this.title = defaultTitle,
    this.titleColor = defaultCardFontColor,
  });

  final Color? iconColor;
  final IconData? icon;
  final String title;
  final Color? titleColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
          color: iconColor,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          title,
          style: TextStyle(
            color: titleColor,
            fontSize: 18.0,
          ),
        ),
      ],
    );
  }
}
