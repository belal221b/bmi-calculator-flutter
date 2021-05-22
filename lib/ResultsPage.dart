import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'my_widgets.dart';
import 'constants.dart';
import 'CalculatorBrain.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiResults,
      @required this.interpretation,
      @required this.resultText});

  final String bmiResults;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Text(
              'Your Results',
              style: knumbersStyle,
            ),
          ),
          Expanded(
            child: MyCard(
              colour: kactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kbodyStateStyle,
                  ),
                  Text(
                    bmiResults,
                    style: kbodyNumberStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kinterpretationText,
                    ),
                  )
                ],
              ),
            ),
          ),
          BottmButton(
            text: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
