import 'package:flutter/material.dart';
import '../constant.dart';

class bottombutton extends StatelessWidget {
  bottombutton({@required this.ontap, @required this.buttontitle});

  final Function ontap;
  final String buttontitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: Center(
          child: Text(
            buttontitle,
            style: kLargeButtonTextstyle,
          ),
        ),
        color: kwidgetcolorbottom,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        height: kbottomContanerH,
      ),
    );
  }
}
