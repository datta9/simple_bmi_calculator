import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phani_bmi/bottom_button.dart';
import 'package:phani_bmi/constants.dart';
import 'package:phani_bmi/reusable_card.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmiResultText,
      @required this.bmiResultNumber,
      @required this.bmiInterpretationText});

  final String bmiResultText;
  final String bmiResultNumber;
  final String bmiInterpretationText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: ReusableCard(
                color: konstActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      bmiResultText,
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Color(0xff24d876),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      bmiResultNumber,
                      style: TextStyle(
                          fontSize: 100.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      bmiInterpretationText,
                      style: TextStyle(fontSize: 22.0),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              )),
          BottomButton(
              buttonName: 'RE-CALCULATE',
              onPressed: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
