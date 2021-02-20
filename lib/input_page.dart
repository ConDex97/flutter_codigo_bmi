import 'package:flutter/material.dart';
import 'package:flutter_codigo_bmi/icon_content.dart';
import 'package:flutter_codigo_bmi/reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeCardColor = Color(0xffA457BF);
const inactiveCardColor=Color(0xff3D3D3D);
const bottomContainerColor = Colors.greenAccent;
const bottomContainerHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor=inactiveCardColor;
  Color femaleCardColor=inactiveCardColor;

  void updateCardColor(int gender){
    if(gender==1){
      if(maleCardColor==inactiveCardColor){
          maleCardColor=activeCardColor;
          femaleCardColor=inactiveCardColor;
      }
    }
    if(gender==2){
      if(femaleCardColor==inactiveCardColor){
        femaleCardColor=activeCardColor;
        maleCardColor=inactiveCardColor;
      }
    }
    setState(() {

    });
  }




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
                  child: GestureDetector(
                    onTap: (){
                      print("Male");
                      updateCardColor(1);
                    },
                    child: ReusableCard(
                      color: maleCardColor,
                      cardChild:
                          IconContent(text: "MALE", icon: FontAwesomeIcons.mars),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      print("FEMALE");
                      updateCardColor(2);
                    },
                    child: ReusableCard(
                      color: femaleCardColor,
                      cardChild: IconContent(
                          text: "FEMALE", icon: FontAwesomeIcons.venus),
                    ),
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




