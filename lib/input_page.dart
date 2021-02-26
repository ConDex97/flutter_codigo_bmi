import 'package:flutter/material.dart';
import 'package:flutter_codigo_bmi/constants.dart';
import 'package:flutter_codigo_bmi/icon_content.dart';
import 'package:flutter_codigo_bmi/reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';




enum Gender{
  male,
  female,
}


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {


  Gender selectedGender;
  int height=160;






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
                    color: selectedGender==Gender.male?activeCardColor: inactiveCardColor,
                    cardChild:
                        IconContent(text: "MALE", icon: FontAwesomeIcons.mars),
                    onPress: (){
                      selectedGender=Gender.male;
                      setState(() {

                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: selectedGender==Gender.female?activeCardColor: inactiveCardColor,
                    cardChild: IconContent(
                        text: "FEMALE", icon: FontAwesomeIcons.venus),
                    onPress: (){
                      selectedGender=Gender.female;
                      setState(() {

                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      color: activeCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("HEIGHT",style:labelTextStyle
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Text(height.toString(),style: NumberTextStyle,),
                            Text("cm",style: labelTextStyle,),
                          ],
                        ),
                        Slider(
                          value: height.toDouble(),
                          min: 10,
                          max: 200,
                          onChanged: (double value){
                            height=value.round();
                            print(value);

                            setState(() {

                            });
                          },
                        ),
                      ],
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




