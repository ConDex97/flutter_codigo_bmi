import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const labelTextStyle =TextStyle(
  fontSize: 18.0,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);

class IconContent extends StatelessWidget {
  final String text;
  final IconData icon;
  IconContent({@required this.text, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 70.0,
        ),
        SizedBox(
          height: 7.0,
        ),
        Text(
          this.text,
          style: labelTextStyle,
        ),
      ],
    );
  }
}