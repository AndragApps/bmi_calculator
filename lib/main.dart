import 'package:bmi_calculator/reusable_Widgets/cardWidget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_Widgets/containerWidget.dart';

///START CONST PROPETIES.
const heightBottomConainer = 80.0;
const colorBottomConainer = Color(0xFFEB1555);
const activeCardColor = Color(0XFF1D1E33);
const inactiveCardColor = Color(0XFF111328);
const cardFontColor = Color(0xFF8D8E98);

///CONST PROPERTIES ENDS.

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
  @override
  Color maleBackgroundColor = inactiveCardColor;
  Color femaleBackgroundColor = inactiveCardColor;

  void updateCardColor({required bool isMale}) {
    if (isMale) {
      if (maleBackgroundColor == inactiveCardColor) {
        femaleBackgroundColor = inactiveCardColor;
        maleBackgroundColor = activeCardColor;
      } else {
        maleBackgroundColor = inactiveCardColor;
      }
    }
    if (!isMale) {
      if (femaleBackgroundColor == inactiveCardColor) {
        maleBackgroundColor = inactiveCardColor;
        femaleBackgroundColor = activeCardColor;
      } else {
        femaleBackgroundColor = inactiveCardColor;
      }
    }
  }

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
                    child: GestureDetector(
                      onTap: () {
                        setState(() => updateCardColor(isMale: true));
                      },
                      child: ReusableContainer(
                        backgroundColor: maleBackgroundColor,
                        cardChild: CardWidget(
                          icon: FontAwesomeIcons.mars,
                          title: "MALE",
                          titleColor: cardFontColor,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() => updateCardColor(isMale: false));
                      },
                      child: ReusableContainer(
                        backgroundColor: femaleBackgroundColor,
                        cardChild: CardWidget(
                          icon: FontAwesomeIcons.venus,
                          title: "FEMALE",
                          titleColor: cardFontColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableContainer(
                backgroundColor: activeCardColor,
                cardChild: CardWidget(
                  icon: Icons.add,
                  title: "THIRD",
                  titleColor: cardFontColor,
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableContainer(
                      backgroundColor: activeCardColor,
                      cardChild: CardWidget(
                        icon: Icons.add,
                        title: "FOUR",
                        titleColor: cardFontColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableContainer(
                      backgroundColor: activeCardColor,
                      cardChild: CardWidget(
                        icon: Icons.add,
                        title: "FIVE",
                        titleColor: cardFontColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              height: heightBottomConainer,
              color: colorBottomConainer,
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
