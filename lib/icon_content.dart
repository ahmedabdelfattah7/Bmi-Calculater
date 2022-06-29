import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusableCard.dart';
import 'input_page.dart';
import 'constants.dart';


class iconContent extends StatelessWidget {
  iconContent({required this.myIcon ,required this.genderType});
  final IconData? myIcon;
  final String? genderType;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          myIcon,
          size: 80.0,),
        SizedBox(
          height: 20.0,
        ),
        Text("$genderType",
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
