import 'package:flutter/material.dart';
import 'constants.dart';
class CalcButton extends StatelessWidget {

  CalcButton({this.buttonText, this.onTap});

  final String buttonText;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        color: kbottomColor,
        margin: EdgeInsets.only(top: 10.0,bottom: 15.0),
        width: 250.0,
        height: kbottomContainerHeight,
      ),
    );
  }
}