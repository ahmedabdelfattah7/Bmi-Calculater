// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusableCard.dart';
import 'constants.dart';
import 'bottom_Button.dart';

class ResultPage extends StatelessWidget {
final String? bmiResult;
final String? resultText;
final String? interPretation;
ResultPage({required this.bmiResult,required this.interPretation,required this.resultText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI CALCULATOR",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText!.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    "$bmiResult",
                    style: kBmiTextStyle,
                  ),
                  Text(
                    "$interPretation",
                    textAlign: TextAlign.center,
                    style: KbodyTextStyle,
                  ),
                  bottomButton(
                      name: 'Re-Calculate',
                      ontabbed: () {
                        Navigator.pop(context);
                      })
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
