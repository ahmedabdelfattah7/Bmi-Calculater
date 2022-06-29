import 'icon_content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'input_page.dart';
import 'constants.dart';



class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour,this.cardChild,this.onPress});
  final Color? colour;
  final Widget? cardChild;
  final  onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          // color: Colors.red,
          borderRadius: BorderRadius.circular(10.0),
        ),

      ),
    );
  }
}
