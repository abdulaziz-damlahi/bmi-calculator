import 'package:flutter/material.dart';

class iconcontent extends StatelessWidget {
  iconcontent({this.icon, this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, size: 80),
        SizedBox(
          height: 50,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 18.9,
            color: Color(0xffffffff),
          ),
        ),
      ],
    );
  }
}
