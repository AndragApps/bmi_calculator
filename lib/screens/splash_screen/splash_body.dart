// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sipcalc/logic/spi_brain.dart';
import 'package:sipcalc/reusable_widget/container_widget.dart';
import 'package:sipcalc/reusable_widget/iconbutton_widget.dart';
import 'package:sipcalc/reusable_widget/lable_widget.dart';
import 'package:sipcalc/reusable_widget/number_widget.dart';
import 'package:sipcalc/reusable_widget/sliderthene_widget.dart';

import '../../constant.dart';

class SplashBodyWidget extends StatefulWidget {
  const SplashBodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashBodyWidget> createState() => _SplashBodyWidgetState();
}

class _SplashBodyWidgetState extends State<SplashBodyWidget> {
  SipBrain sipBrainObj = SipBrain();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ///Monthly Investment Amount
        Expanded(
          child: ContainerWidget(
            children: [
              NumberWidget(intValue: sipBrainObj.getMonthlyInvestmentAmt()),
              LableWidget(label: kMonthlyInvestmentAmountLbl),
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

        ///Investment Monthly or yearly .
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: ContainerWidget(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        NumberWidget(
                          intValue: sipBrainObj.getInvestmentPeriodInMonth(),
                          withPadding: false,
                        ),
                        LableWidget(
                          label: " Months",
                          withPadding: false,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconButton(
                          icon: Icons.remove,
                          onPress: () {
                            setState(() {
                              sipBrainObj.removeInvestmentPeriodInMonth();
                            });
                          },
                        ),
                        RoundIconButton(
                          icon: Icons.add,
                          onPress: () {
                            setState(() {
                              sipBrainObj.addInvestmentPeriodInMonth();
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ContainerWidget(
                  children: [],
                ),
              ),
            ],
          ),
        ),

        ///Expected Return
        Expanded(
          child: ContainerWidget(
            children: [
              NumberWidget(doubleValue: sipBrainObj.getExpectedReturns()),
              LableWidget(label: kExpectedReturnsLbl),
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
      ],
    );
  }
}
