import 'package:flutter/material.dart';
import 'hesap_sayfasi.dart';

void main() => runApp(VKIHesapla());

class VKIHesapla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Color.fromRGBO(3, 54, 73, 1),
          // accentColor: Color.fromRGBO(232, 221, 203, 1),
          scaffoldBackgroundColor: Color.fromRGBO(3, 101, 100, 1),
          // textTheme: TextTheme(
          //     body1: TextStyle(color: Color.fromRGBO(232, 221, 203, 1))
          //     )
        ),
        home: HesaplamaSayfasi());
  }
}
