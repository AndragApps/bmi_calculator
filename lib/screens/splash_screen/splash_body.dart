// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sipcalc/logic/spi_brain.dart';
import 'package:sipcalc/reusable_widget/bottombutton_widget.dart';
import 'package:sipcalc/reusable_widget/container_widget.dart';
import 'package:sipcalc/reusable_widget/currencyformat_widget.dart';
import 'package:sipcalc/reusable_widget/lable_widget.dart';
import 'package:sipcalc/reusable_widget/monthyear_widget.dart';
import 'package:sipcalc/reusable_widget/number_widget.dart';
import 'package:sipcalc/reusable_widget/sliderthene_widget.dart';
import 'package:sipcalc/screens/result_screen/sip_result_screen.dart';

import '../../constant.dart';

class SplashBodyWidget extends StatefulWidget {
  const SplashBodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashBodyWidget> createState() => _SplashBodyWidgetState();
}

class _SplashBodyWidgetState extends State<SplashBodyWidget> {
  final SipBrain sipBrainObj = SipBrain();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ///Investment Amount
        Expanded(
          child: ContainerWidget(
            children: [
              CurrencyFormatWidget(
                lable: kInvestmentAmountLbl,
                amountInInt: sipBrainObj.getMonthlyInvestmentAmt(),
              ),
              SliderThemeWidget(
                child: Slider(
                  min: 1000,
                  max: 100000,
                  value: sipBrainObj.getMonthlyInvestmentAmt().toDouble(),
                  onChanged: (double value) {
                    setState(() {
                      sipBrainObj.setMonthlyInvestmentAmt(value.round());
                    });
                  },
                ),
              ),
            ],
          ),
        ),

        ///Expected Return
        Expanded(
          child: ContainerWidget(
            children: [
              LableWidget(label: kExpectedReturnsLbl),
              NumberWidget(doubleValue: sipBrainObj.getExpectedReturns()),
              SliderThemeWidget(
                child: Slider(
                  min: 1.0,
                  max: 100.0,
                  value: sipBrainObj.getExpectedReturns().toDouble(),
                  onChanged: (double value) {
                    setState(() {
                      sipBrainObj.setExpectedReturns(value);
                    });
                  },
                ),
              ),
            ],
          ),
        ),

        ///Investment Monthly or yearly .
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: MonthYearWidget(
                  month: sipBrainObj.getInvestmentPeriodInMonth(),
                  label: kInvestmentPeriodInMonthLbl,
                  withPadding: false,
                  onPressAdd: () {
                    setState(() {
                      sipBrainObj.addInvestmentPeriodInMonth();
                    });
                  },
                  onPressRemove: () {
                    setState(() {
                      sipBrainObj.removeInvestmentPeriodInMonth();
                    });
                  },
                ),
              ),
              Expanded(
                child: MonthYearWidget(
                  month: sipBrainObj.getInvestmentPeriodInYear(),
                  label: kInvestmentPeriodInYearLbl,
                  withPadding: false,
                  onPressAdd: () {
                    setState(() {
                      sipBrainObj.addInvestmentPeriodInYear();
                    });
                  },
                  onPressRemove: () {
                    setState(() {
                      sipBrainObj.removeInvestmentPeriodInYear();
                    });
                  },
                ),
              ),
            ],
          ),
        ),

        ///Bottom Button
        BottomButton(
          buttonLabel: 'CALCULATE SIP',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SipResultScreen(
                  sipBrain: sipBrainObj,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
