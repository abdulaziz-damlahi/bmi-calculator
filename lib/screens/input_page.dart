import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/component/reusable.dart';
import 'package:bmi_calculator/component/icon_content.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/screens//Results_pages.dart';
import 'package:bmi_calculator/component/bottom_button.dart';
import 'package:bmi_calculator/component/round_icon_button.dart';
import 'package:bmi_calculator/brain_calc.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedgender;
  int height = 180;
  int weight = 65;
  int AGE = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: reusable(
                  onpress: () {
                    setState(() {
                      selectedgender = Gender.male;
                    });
                  },
                  colour: selectedgender == Gender.male
                      ? kactivecardcolor
                      : kwidgetcolor,
                  cardChild: iconcontent(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                ),
              ),
              Expanded(
                child: reusable(
                  onpress: () {
                    setState(() {
                      selectedgender = Gender.female;
                    });
                  },
                  colour: selectedgender == Gender.female
                      ? kactivecardcolor
                      : kwidgetcolor,
                  cardChild: iconcontent(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: reusable(
              colour: kwidgetcolor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: klabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: klabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0xFFE8d),
                      thumbColor: Color(0xFFeB1555),
                      activeTrackColor: Color(0xFFeB1555),
                      overlayColor: Color(0x1feB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      label: height.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          height = value.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: reusable(
                  colour: kwidgetcolor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'WEIGHT',
                        style: klabelTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: kNumberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                          SizedBox(width: 10.0),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: reusable(
                  colour: kwidgetcolor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'AGE',
                        style: klabelTextStyle,
                      ),
                      Text(
                        AGE.toString(),
                        style: kNumberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                AGE--;
                              });
                            },
                          ),
                          SizedBox(width: 10.0),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                AGE++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
          bottombutton(
            buttontitle: 'CALCULATE',
            ontap: () {
              calcbrain calc = calcbrain(height: height, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPages(
                    bmiresult: calc.calculatebmi(),
                    interbtur: calc.getResult(),
                    resulttext: calc.getinter(),
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
