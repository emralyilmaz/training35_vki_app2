import 'package:flutter/material.dart';
import 'package:training35_vki_app2/hesap_card.dart';
import 'hesap_buton.dart';

class SonucSayfasi extends StatelessWidget {
  SonucSayfasi({this.sonuc, this.sonucText, this.sonucYorum});
  final String sonuc;
  final String sonucText;
  final String sonucYorum;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("VKI Hesaplama Sonucu"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Expanded(
                  child: Text(
                "Sonucunuz",
                style: TextStyle(
                    fontSize: 50,
                    color: Color.fromRGBO(205, 179, 128, 1),
                    fontWeight: FontWeight.bold),
              )),
            ),
            Expanded(
                // flex: 5,
                child: HesapCard(
              renk: Color.fromRGBO(205, 179, 128, 1),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    sonucText,
                    style: TextStyle(
                        fontSize: 25.0, color: Color.fromRGBO(3, 101, 100, 1)),
                  ),
                  Text(
                    sonuc,
                    style: TextStyle(
                        fontSize: 100.0, color: Color.fromRGBO(3, 54, 73, 1)),
                  ),
                  Text(
                    sonucYorum,
                    style: TextStyle(
                        fontSize: 20.0, color: Color.fromRGBO(3, 101, 100, 1)),
                  )
                ],
              ),
            )),
            HesapButon(
              baslik: "TEKRAR HESAPLA",
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ));
  }
}
