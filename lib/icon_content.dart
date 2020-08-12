import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String text;
  IconContent({@required this.icon, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 50,
          color: Color.fromRGBO(3, 54, 73, 1),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: TextStyle(
              color: Color.fromRGBO(3, 54, 73, 1),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
