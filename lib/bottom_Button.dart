import 'results_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusableCard.dart';
import 'constants.dart';
import 'input_page.dart';








class bottomButton extends StatelessWidget {
  final VoidCallback? ontabbed;
  final String? name;
  bottomButton({required this.name, required this.ontabbed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontabbed,
      child: Container(
        child: Center(
          child: Text(
            '$name',
            style: kLargeButtonStyle,
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
