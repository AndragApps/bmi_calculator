import 'package:bmi_calculator/reusable_Widgets/bottom_button.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:bmi_calculator/reusable_Widgets/containerWidget.dart';

class FinalResultPage extends StatelessWidget {
  const FinalResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Result",
                style: kHeightTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableContainer(
              backgroundColor: kDefaultCardBackgroundColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Normal",
                    style: kHeightTextStyle.copyWith(
                      color: Color(0xFF24D876),
                      fontSize: 22,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "89.56",
                    style: kHeightTextStyle.copyWith(
                      fontSize: 100.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      "You BMI result quite low, you should eat more!",
                      style: kTitleTextStyle.copyWith(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
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
