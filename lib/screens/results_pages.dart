import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/component/reusable.dart';
import 'package:bmi_calculator/component/bottom_button.dart';

class ResultsPages extends StatelessWidget {
  ResultsPages(
      {@required this.interbtur,
      @required this.bmiresult,
      @required this.resulttext});

  final String bmiresult;
  final String resulttext;
  final String interbtur;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'your result',
                style: Ktitletextsdtyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: reusable(
              colour: kwidgetcolor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resulttext,
                    style: kresulttextstyle,
                  ),
                  Text(
                    bmiresult,
                    style: kbmitextstyle,
                  ),
                  Text(
                    interbtur,
                    textAlign: TextAlign.center,
                    style: kbodytextstyle,
                  ),
                ],
              ),
            ),
          ),
          bottombutton(
            buttontitle: 'RE-CALCULATE',
            ontap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
