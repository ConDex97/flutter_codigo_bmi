import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final Function onPress;


  ReusableCard({@required this.color, @required this.cardChild,this.onPress});

  // const ReusableCard({
  //   Key key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onPress,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: cardChild,
      ),
    );
  }
}