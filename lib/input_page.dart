import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable.dart';
import 'icon_content.dart';

const bottomContanerH = 80.0;
const widgetcolor = Color(0xff1d1e33);
const widgetcolorbottom = Color(0xFFEB12555);
const activecardcolor = Color(0xf0000000);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = widgetcolor;
  Color femaleCardColor = widgetcolor;

  void updatecolor(Gender gender) {
    if (gender == Gender.male) {
      if (maleCardColor == widgetcolor) {
        maleCardColor = activecardcolor;
        femaleCardColor = widgetcolor;
      } else {
        maleCardColor = widgetcolor;
      }
    }
    if (gender == Gender.female) {
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
                      updatecolor(Gender.male);
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
                      updatecolor(Gender.female);
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
