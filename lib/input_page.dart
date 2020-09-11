import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable.dart';
import 'icon_content.dart';

const bottomContanerH = 80.0;
const widgetcolor = Color(0xff1d1e33);
const widgetcolorbottom = Color(0xFFEB12555);
const activecardcolor = Color(0xf0000000);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = widgetcolor;
  Color femaleCardColor = widgetcolor;

  void updatecolor(int gender) {
    if (gender == 1) {
      if (maleCardColor == widgetcolor) {
        maleCardColor = activecardcolor;
        femaleCardColor = widgetcolor;
      } else {
        maleCardColor = widgetcolor;
      }
    }
    if (gender == 2) {
      if (femaleCardColor == widgetcolor) {
        femaleCardColor = activecardcolor;
        maleCardColor = widgetcolor;
      } else {
        femaleCardColor = widgetcolor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updatecolor(1);
                    });
                  },
                  child: reusable(
                    colour: maleCardColor,
                    cardChild: iconcontent(
                      icon: FontAwesomeIcons.mars,
                      label: 'male',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updatecolor(2);
                    });
                  },
                  child: reusable(
                    colour: femaleCardColor,
                    cardChild: iconcontent(
                      icon: FontAwesomeIcons.venus,
                      label: 'female',
                    ),
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: reusable(
              colour: widgetcolor,
            ),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: reusable(
                  colour: widgetcolor,
                ),
              ),
              Expanded(
                child: reusable(
                  colour: widgetcolor,
                ),
              )
            ],
          )),
          Container(
            color: widgetcolorbottom,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContanerH,
          ),
        ],
      ),
    );
  }
}
