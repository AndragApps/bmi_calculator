import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_Widgets/containerWidget.dart';

///START CONST PROPETIES.
const heightBottomConainer = 80.0;
const colorBottomConainer = Color(0xFFEB1555);
const backgroundColorReusableConainter = Color(0XFF1D1E33);

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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Container(
        child: Column(
          // mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ReusableContainer(
                    backgroundColor: backgroundColorReusableConainter,
                    cardChild: CardWidget(
                      icon: FontAwesomeIcons.mars,
                      iconColor: Colors.white,
                      title: "MALE",
                    ),
                  ),
                  ReusableContainer(
                    backgroundColor: backgroundColorReusableConainter,
                    cardChild: CardWidget(
                      icon: FontAwesomeIcons.mars,
                      iconColor: Colors.white,
                      title: "FEMALE",
                    ),
                  ),
                ],
              ),
            ),
            ReusableContainer(
              backgroundColor: backgroundColorReusableConainter,
              cardChild: CardWidget(
                icon: Icons.add,
                iconColor: Colors.white,
                title: "",
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  ReusableContainer(
                    backgroundColor: backgroundColorReusableConainter,
                    cardChild: CardWidget(
                      icon: Icons.add,
                      iconColor: Colors.white,
                      title: "MALE",
                    ),
                  ),
                  ReusableContainer(
                    backgroundColor: backgroundColorReusableConainter,
                    cardChild: CardWidget(
                      icon: Icons.add,
                      iconColor: Colors.white,
                      title: "MALE",
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

class CardWidget extends StatelessWidget {
  final Color iconColor;
  final IconData icon;
  final String title;

  const CardWidget({
    required this.iconColor,
    required this.icon,
    required this.title,
  });
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
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ],
    );
  }
}
