// ignore_for_file: prefer_const_constructors
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
import 'icon_content.dart';
import 'reusableCard.dart';
import 'constants.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          colorScheme: ColorScheme.light(
            primary: Color(0xFF0a0e21),
            //secondary: Colors.red,
               ),
          scaffoldBackgroundColor: Color(0xFF0a0e21),
         // textTheme: TextTheme(
           // bodyText2: TextStyle(color: Color(0xFFFFFFFF)),
          //)
      ),





      home: InputPage(),
    );
  }
}

