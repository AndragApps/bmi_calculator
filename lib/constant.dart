import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const bool kDebugShowCheckedModeBanner = false;
const kTitle = "SIP Calculator";
const kInvestmentAmountLbl = "Monthly Investment Amount";
const int kInvestmentAmount = 1000;
const kInvestmentPeriodInMonthLbl = "Months";
const int kInvestmentPeriodMonth = 0;
const kInvestmentPeriodInYearLbl = "Years";
const int kInvestmentPeriodYear = 10;
const kExpectedReturnsLbl = "Annual Expected Returns";
const double kExpectedReturns = 12;
const kHeightBottomConainer = 80.0;

const kPrimaryColor = Color(0xFF171717);
const kPrimaryLightColor = Color(0xFF3d3d3d);
const kPrimaryDarkColor = Color(0xFF000000);
const kPrimaryTextColor = Color(0xFFffffff);
const kSliderInActiveColor = Color(0xFF8D8E98);
const kSliderActiveColor = Color(0xFF019254);
const kColorBottomConainer = kSliderActiveColor;

const kTitleTextStyle = TextStyle(
  color: Color(0xFF8D8E98),
  fontSize: 18.0,
  letterSpacing: 1.5,
);

const kTextStyle = TextStyle(
  color: kPrimaryTextColor,
  fontWeight: FontWeight.w900,
  fontSize: 20,
);
const kNumberStyle = TextStyle(
  color: kPrimaryTextColor,
  fontWeight: FontWeight.w900,
  fontSize: 55,
);

const kHeightTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);
