import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import "IconRepeat.dart";
import 'Recode.dart';
import 'Bmiconstants.dart';
import 'RoundIconButton.dart';
import 'resultsPage.dart';
import 'BottomButton.dart';
import 'calculator_brain.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  static const String id = 'InputPage';
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 200;
  int weight = 60;
  int age = 19;
  void reset() {
    setState(
      () {
        selectedGender = null;
        height = 200;
        weight = 60;
        age = 19;
      },
    );
  }

  Gender selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF01497c),
      appBar: AppBar(
        title: Center(
          child: Text('CALCULATE YOUR BMI         '),
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: recode(
                    onPressed: () {
                      setState(
                        () {
                          selectedGender = Gender.male;
                        },
                      );
                    },
                    colours: selectedGender == Gender.male
                        ? kactiveCardColor
                        : kinactiveCardColor,
                    cardChild: iconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: recode(
                    onPressed: () {
                      setState(
                        () {
                          selectedGender = Gender.female;
                        },
                      );
                    },
                    colours: selectedGender == Gender.female
                        ? kactiveCardColor
                        : kinactiveCardColor,
                    cardChild: iconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: recode(
              colours: kactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT      ',
                    style: kLabelstyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(height.toString(), style: knumStyle),
                      Text(
                        ' cm',
                        style: kLabelstyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xFF8D8E98),
                        activeTrackColor: Colors.white,
                        overlayColor: Color(0xFFA9D6E5),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 25.0),
                        thumbColor: Color(0xFF012A4A),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0)),
                    child: Slider(
                      value: height.toDouble(),
                      min: 100,
                      max: 300,
                      onChanged: (double newValue) {
                        setState(
                          () {
                            height = newValue.round();
                          },
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: recode(
                    colours: kactiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: kLabelstyle,
                        ),
                        Text(
                          weight.toString(),
                          style: knumStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(
                                  () {
                                    weight--;
                                  },
                                );
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(
                                    () {
                                      weight++;
                                    },
                                  );
                                })
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: recode(
                    colours: kactiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: kLabelstyle,
                        ),
                        Text(age.toString(), style: knumStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(
                                  () {
                                    age--;
                                  },
                                );
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(
                                  () {
                                    age++;
                                  },
                                );
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            text: 'CALCULATE',
            onTap: () {
              CalculatorBrain calc =
                  CalculatorBrain(height: height, weight: weight);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    reset: reset,
                    bmiResult: calc.CalculateBMI(),
                    resultText: calc.getResult(),
                    interpretation: calc.getInterpretation(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
