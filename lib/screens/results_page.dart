import 'package:bmi_calc/components/bottom_button.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calc/constants.dart';
import 'package:bmi_calc/components/reusable_card.dart';
// import 'package:bmi_calc/calculator_brain.dart';

class ResultsPage extends StatelessWidget {


  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultsPage({ required this.interpretation,
    required this.bmiResult, required this.resultText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment:Alignment.bottomLeft ,
                child: Text('Your Result', style:kTitleTextStyle ,)
              ),
          ),
          Expanded(
              flex:5,
              child: ReusableCard(
                keyColour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(resultText.toUpperCase(), style: kResultTextStyle,),
                    Text(bmiResult, style: kBMITextStyle,),
                    Text(interpretation,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
          ),
         BottomButton(onTap: (){Navigator.pop(context);},
             buttonTitle: 'RE-CALCULATE')
        ],
      ) ,
    );
  }
}
