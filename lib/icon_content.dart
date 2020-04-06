import 'package:flutter/material.dart';

const labelStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

class cardChildWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  cardChildWidget({@required this.icon, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: labelStyle,
        )
      ],
    );
  }
}
