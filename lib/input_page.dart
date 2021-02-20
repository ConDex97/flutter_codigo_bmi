import 'package:flutter/material.dart';
import 'package:flutter_codigo_bmi/icon_content.dart';
import 'package:flutter_codigo_bmi/reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeCardColor = Color(0xffA457BF);
const bottomContainerColor = Colors.greenAccent;
const bottomContainerHeight = 80.0;

class InputPage extends StatefulWidget {
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
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                    cardChild:
                        IconContent(text: "MALE", icon: FontAwesomeIcons.mars),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                    cardChild: IconContent(
                        text: "FEMALE", icon: FontAwesomeIcons.venus),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(color: activeCardColor),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(color: activeCardColor),
                ),
                Expanded(
                  child: ReusableCard(color: activeCardColor),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            height: bottomContainerHeight,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}




