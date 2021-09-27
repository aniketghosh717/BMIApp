import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'calcbutton.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.bmiResult,@required this.bmiText , @required this.bmiFeedback});

  final String bmiResult;
  final String bmiText;
  final String bmiFeedback;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 10.0),
              alignment: Alignment.topCenter,
              child: Text(
                  "Result",
                style: kNumTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseContainer(
                colour: kcontainerColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center ,
                children: [
                  Text(bmiText.toUpperCase(),
                  style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    bmiFeedback,
                    style: kLabelTextStyle,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: CalcButton(
              buttonText: "RE-CALCULATE",
              onTap: (){
                Navigator.pop(context);
              },
            ),
          )
        ],
      )
    );
  }
}
