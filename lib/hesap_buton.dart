import 'package:flutter/material.dart';

class HesapButon extends StatelessWidget {
  final Function onTap;
  final String baslik;

  HesapButon({@required this.onTap, @required this.baslik});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            baslik,
            style: TextStyle(
                fontSize: 25.0,
                color: Color.fromRGBO(232, 221, 203, 1),
                fontWeight: FontWeight.bold),
          ),
        ),
        color: Color.fromRGBO(3, 54, 73, 1),
        margin: EdgeInsets.only(top: 1),
        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        width: double.infinity,
      ),
    );
  }
}
