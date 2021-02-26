

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codigo_bmi/constants.dart';
import 'package:flutter_codigo_bmi/icon_content.dart';
import 'package:flutter_codigo_bmi/result_page.dart';
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
  int age=25;
  int weight=60;






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

                          inactiveColor: Colors.white54,
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
                  child: ReusableCard(color: activeCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("AGE",style: labelTextStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Text(age.toString(),style: NumberTextStyle,),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            RoundIconButton(icon: FontAwesomeIcons.plus,onPressed: (){
                              age++;
                              setState(() {

                              });

                            },
                            ),
                            SizedBox(width: 15.0,),
                            RoundIconButton(icon: FontAwesomeIcons.minus,onPressed: (){
                              age--;
                              setState(() {

                              });
                            },
                            ),

                          ],
                        ),

                      ],
                    ),

                  ),
                ),
                Expanded(
                  child: ReusableCard(color: activeCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("WEIGHT",style: labelTextStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Text(weight.toString(),style: NumberTextStyle,),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(icon: FontAwesomeIcons.plus,onPressed: (){
                              weight++;
                              setState(() {

                              });
                            },),

                            SizedBox(width: 15.0,),
                            RoundIconButton(icon: FontAwesomeIcons.minus,onPressed: (){
                              weight--;
                              setState(() {

                              });
                            },),

                          ],
                        ),

                      ],
                    ),
                  ),

                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultPage()));
            },
            child: Container(
              color: bottomContainerColor,
              height: bottomContainerHeight,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              child: Center(
                child: Text("CALCULATE",style: LargeButtonTextStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
 final IconData icon;
 final Function onPressed;
 RoundIconButton({@required this.icon,@required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(onPressed: onPressed,
      child: Icon(icon),
      fillColor: Colors.white24,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        height: 40.0,
        width: 40.0,
      ),
    );
  }
}




