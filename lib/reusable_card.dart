import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  ReusableCard({@required this.color, @required this.cardChild});

  // const ReusableCard({
  //   Key key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: cardChild,
    );
  }
}