import 'package:flutter/material.dart';

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
                  colour: Color(0xff1d1e33),
                ),
              ),
              Expanded(
                child: reusable(
                  colour: Color(0xff1d1e33),
                ),
              ),
            ],
          )),
          Expanded(
            child: reusable(
              colour: Color(0xff1d1e33),
            ),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: reusable(
                  colour: Color(0xff1d1e33),
                ),
              ),
              Expanded(
                child: reusable(
                  colour: Color(0xff1d1e33),
                ),
              )
            ],
          )),
        ],
      ),
    );
  }
}

class reusable extends StatelessWidget {
  reusable({@required this.colour});
  Color colour;
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
