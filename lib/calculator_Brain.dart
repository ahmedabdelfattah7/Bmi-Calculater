import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusableCard.dart';
import 'constants.dart';
import 'bottom_Button.dart';
import 'dart:math';

class CalculatorBrain {
  final int? height;
  final int? weight;
  double? _bmi;
  CalculatorBrain({this.height,this.weight});


  String? CalculateBmi(){
    _bmi = weight!/pow(height!/100, 2);
    return  _bmi!.toStringAsFixed(1);
  }
 String? getRuselt(){
    if(_bmi!>=25){
     return 'OverWeight';
    }else if (_bmi!>18.5){
      return 'Normal';

    }else{
      return 'UnderWeight';
    }
 }
String? getInterPretation(){
  if(_bmi!>=25){
    return 'You have a higher than Normal body weight,try to exercise';
  }else if (_bmi!>18.5){
    return 'You have a normal body weight , Good Job!';

  }else{
    return 'You have a lowe than Normal body weight , you can eat a bit more.';
  }
  }
}