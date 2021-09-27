import 'package:flutter/material.dart';
import 'constants.dart';


class ReuseCardChild extends StatelessWidget {
  ReuseCardChild({this.label ,this.containerIcon });
  final String label;
  final IconData containerIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          containerIcon,
          size: iconsize,
        ),
        SizedBox(
          height: sizeheight,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
