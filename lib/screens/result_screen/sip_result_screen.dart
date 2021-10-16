// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import 'package:sipcalc/constant.dart';
import 'package:sipcalc/logic/spi_brain.dart';
import 'package:sipcalc/reusable_widget/bottombutton_widget.dart';
import 'package:sipcalc/reusable_widget/container_widget.dart';
import 'package:sipcalc/reusable_widget/currencyformat_widget.dart';
import 'package:sipcalc/reusable_widget/lable_widget.dart';
import 'package:sipcalc/reusable_widget/number_widget.dart';
import 'package:sipcalc/reusable_widget/scaffold_widget.dart';

class SipResultScreen extends StatelessWidget {
  const SipResultScreen({Key? key, required this.sipBrain}) : super(key: key);

  final SipBrain sipBrain;

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //Monthly Investment Amount
          ContainerWidget(
            children: [
              CurrencyFormatWidget(
                withPadding: false,
                lable: kInvestmentAmountLbl,
                amountInInt: sipBrain.getMonthlyInvestmentAmt(),
              ),
            ],
          ),

          //Annual Expected Returns
          ContainerWidget(
            children: [
              LableWidget(
                label: kExpectedReturnsLbl,
                withPadding: false,
              ),
              NumberWidget(
                doubleValue: sipBrain.getExpectedReturns(),
                withPadding: false,
              ),
            ],
          ),

          //Invested Years and Months
          ContainerWidget(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      LableWidget(
                        label: kInvestmentPeriodInYearLbl,
                        withPadding: false,
                      ),
                      NumberWidget(
                        intValue: sipBrain.getInvestmentPeriodInYear(),
                        withPadding: false,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      LableWidget(
                        label: kInvestmentPeriodInMonthLbl,
                        withPadding: false,
                      ),
                      NumberWidget(
                        intValue: sipBrain.getInvestmentPeriodInMonth(),
                        withPadding: false,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),

          //Investment Amount
          Expanded(
            child: ContainerWidget(
              children: [
                CurrencyFormatWidget(
                  withPadding: false,
                  lable: 'Investment Amount',
                  amountInInt: sipBrain.getInvestedAmount(sipBrain),
                ),
              ],
            ),
          ),
          //Wealth Created
          Expanded(
            child: ContainerWidget(
              children: [
                CurrencyFormatWidget(
                  withPadding: false,
                  lable: 'Wealth Created',
                  amountInInt: sipBrain.getSipResult(sipBrain),
                ),
              ],
            ),
          ),
          BottomButton(
            buttonLabel: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
