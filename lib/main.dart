import 'package:flutter/material.dart';
import 'input_page.dart';
void main() => runApp(BMICalculator());


class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme : ThemeData.dark().copyWith(

          primaryColor: Colors.black,
          scaffoldBackgroundColor: Colors.white,

          //textTheme: TextTheme(body1: TextStyle(color: Colors.white),),

      ),
      home: InputPage(),
    );
  }
}


