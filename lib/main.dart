
import 'package:flutter/material.dart';
import 'package:flutter_codigo_bmi/input_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI Calculator",
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xffA6ABAB),
        scaffoldBackgroundColor: Color(0xff3D3D3D),
        sliderTheme: SliderTheme.of(context).copyWith(
          activeTrackColor: Colors.greenAccent,
          thumbColor: Colors.greenAccent,
          overlayColor: Colors.purple.withOpacity(0.3),
          thumbShape: RoundSliderThumbShape(
            enabledThumbRadius: 15.0,
          ),
          overlayShape: RoundSliderOverlayShape(
            overlayRadius: 20.0,
          ),

        ),
      ),
      // theme: ThemeData(
      //   primaryColor: Color(0xffFFCE3B),
      //   accentColor: Color(0xffFFCE3B),
      //   scaffoldBackgroundColor: Color(0xff45B1F5),
      //   textTheme: TextTheme(
      //     bodyText2: TextStyle(
      //       color: Colors.white,
      //     ),
      //   ),
      // ),
      home: InputPage(),
    );
  }
}


