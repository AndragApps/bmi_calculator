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
  SpiBrain spiBrainObj = SpiBrain();
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
              NumberWidget(intValue: spiBrainObj.getMonthlyInvestmentAmt()),
              LableWidget(label: kMonthlyInvestmentAmountLbl),
              SliderThemeWidget(
                child: Slider(
                  min: 1000,
                  max: 100000,
                  value: spiBrainObj.getMonthlyInvestmentAmt().toDouble(),
                  onChanged: (double value) {
                    setState(() {
                      spiBrainObj.setMonthlyInvestmentAmt(value.round());
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
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        NumberWidget(
                          intValue: 1,
                          withPadding: false,
                        ),
                        LableWidget(
                          label: "Month",
                          withPadding: false,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconButton(
                          icon: Icons.remove,
                          onPress: () {},
                        ),
                        RoundIconButton(
                          icon: Icons.add,
                          onPress: () {},
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
              NumberWidget(
                  stringValue:
                      spiBrainObj.getExpectedReturns().toStringAsFixed(2)),
              LableWidget(label: kExpectedReturnsLbl),
              SliderThemeWidget(
                child: Slider(
                  min: 1.0,
                  max: 100.0,
                  value: spiBrainObj.getExpectedReturns().toDouble(),
                  onChanged: (double value) {
                    setState(() {
                      spiBrainObj.setExpectedReturns(value);
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
