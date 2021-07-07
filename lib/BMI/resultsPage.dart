import 'package:flutter/material.dart';
import 'Bmiconstants.dart';
import 'Recode.dart';
import 'BottomButton.dart';
import 'package:bmibc/functionality/screens/search_screen.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({
    @required this.bmiResult,
    @required this.resultText,
    @required this.interpretation,
    this.reset,
  });

  final String bmiResult;
  final String resultText;
  final String interpretation;
  final Function reset;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF01497c),
      appBar: AppBar(
        title: Center(child: Text('CALCULATE YOUR BMI           ')),
        backgroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Container(
                child: Text(
                  'Your Result',
                  style: kTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: recode(
              colours: kactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(resultText.toUpperCase(), style: KResultTextStyle),
                  Text(bmiResult, style: KBMITextStyle),
                  Text(
                    interpretation,
                    style: KBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            text: 'NEXT',
            onTap: () {
              reset();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    // return SearchScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
