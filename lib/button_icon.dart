import 'package:flutter/material.dart';

class IconButtonCustom extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  IconButtonCustom({@required this.icon, @required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      fillColor: Color.fromRGBO(205, 179, 128, 1),
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 0.0,
      child: Icon(icon),
    );
  }
}
