import 'package:bmi_calculator/reusable_Widgets/cardWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'reusable_Widgets/containerWidget.dart';

///START OF ENUM.
enum Gender {
  male,
  female,
  none,
}

///END OF ENUM

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF0A0E21),
        appBarTheme: AppBarTheme(
          color: Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  late Gender selectedGender = Gender.none;
  int height = 180;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableContainer(
                      onTapFunction: () {
                        setState(() {
                          selectedGender = (selectedGender == Gender.male
                              ? Gender.none
                              : Gender.male);
                        });
                      },
                      backgroundColor: selectedGender == Gender.male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: CardWidget(
                        icon: FontAwesomeIcons.mars,
                        title: "MALE",
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableContainer(
                      onTapFunction: () {
                        setState(() {
                          selectedGender = (selectedGender == Gender.female
                              ? Gender.none
                              : Gender.female);
                        });
                      },
                      backgroundColor: selectedGender == Gender.female
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: CardWidget(
                        icon: FontAwesomeIcons.venus,
                        title: "FEMALE",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableContainer(
                backgroundColor: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HEIGHT",
                      style: kTitleTextStyle,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          height.toString(),
                          style: kHeightTextStyle,
                        ),
                        Text(
                          "cm",
                          style: kTitleTextStyle,
                        ),
                      ],
                    ),
                    Slider(
                      min: 120,
                      max: 220,
                      value: height.toDouble(),
                      activeColor: kSliderActiveColor,
                      inactiveColor: kSliderInActiveColor,
                      onChanged: (double value) {
                        setState(() {
                          height = value.round();
                          print(value);
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableContainer(
                      backgroundColor: kActiveCardColor,
                      cardChild: CardWidget(
                        icon: Icons.add,
                        title: "FOUR",
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableContainer(
                      backgroundColor: kActiveCardColor,
                      cardChild: CardWidget(
                        icon: Icons.add,
                        title: "FIVE",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              height: kHeightBottomConainer,
              color: kColorBottomConainer,
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
