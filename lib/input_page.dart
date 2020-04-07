import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomContainerColour = Color(0xFFEb1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          //There's a column which has 3 expanded widget. These 3 expanded widget are 3 rows.
          //For 1st & 3rd Expanded widget (1st row), there are 2 expanded widget (container)
          //For 2nd Expanded widget (2nd row), there's a single expanded widget i.e. container

          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = 'Male';
                      });
                    },
                    child: ReusableCard(
                      color: gender == 'Male'
                          ? activeCardColour
                          : inactiveCardColour,
                      cardChild: cardChildWidget(
                        icon: FontAwesomeIcons.mars,
                        text: 'Male',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = 'Female';
                      });
                    },
                    child: ReusableCard(
                      color: gender == 'Female'
                          ? activeCardColour
                          : inactiveCardColour,
                      cardChild: cardChildWidget(
                        icon: FontAwesomeIcons.venus,
                        text: 'Female',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GestureDetector(
              child: ReusableCard(
                color: activeCardColour,
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(color: activeCardColour),
                ),
                Expanded(
                  child: ReusableCard(color: activeCardColour),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColour,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
