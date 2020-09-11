import 'package:flutter/material.dart';

const bottomContanerH = 80.0;
const widgetcolor = Color(0xff1d1e33);
const widgetcolorbottom = Color(0xFFEB12555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                child: reusable(
                  colour: widgetcolor,
                ),
              ),
              Expanded(
                child: reusable(
                  colour: widgetcolor,
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

class reusable extends StatelessWidget {
  reusable({@required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
