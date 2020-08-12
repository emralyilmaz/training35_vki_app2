import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:training35_vki_app2/sonuc_sayfasi.dart';
import 'hesap_card.dart';
import 'icon_content.dart';
import 'button_icon.dart';
import 'hesap_buton.dart';
import 'hesaplama_alani.dart';

const aktifCardRenk = Color.fromRGBO(205, 179, 128, 1);
const inAktifCardRenk = Color.fromRGBO(232, 221, 203, 1);

enum Cinsiyet { erkek, kadin }

class HesaplamaSayfasi extends StatefulWidget {
  @override
  _HesaplamaSayfasiState createState() => _HesaplamaSayfasiState();
}

class _HesaplamaSayfasiState extends State<HesaplamaSayfasi> {
  Color erkekCardRenk = inAktifCardRenk;
  Color kadinCardRenk = inAktifCardRenk;

  Cinsiyet secilmisCinsiyet;

  int boy = 150;
  int kilo = 40;
  int yas = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "VKI Hesapla",
            style: TextStyle(color: Color.fromRGBO(232, 221, 203, 1)),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    secilmisCinsiyet = Cinsiyet.erkek;
                  });
                },
                child: HesapCard(
                  renk: secilmisCinsiyet == Cinsiyet.erkek
                      ? aktifCardRenk
                      : inAktifCardRenk,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.mars,
                    text: "ERKEK",
                  ),
                ),
              )),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    secilmisCinsiyet = Cinsiyet.kadin;
                  });
                },
                child: HesapCard(
                  renk: secilmisCinsiyet == Cinsiyet.kadin
                      ? aktifCardRenk
                      : inAktifCardRenk,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    text: "KADIN",
                  ),
                ),
              )),
            ],
          )),
          Expanded(
              child: HesapCard(
            renk: Color.fromRGBO(232, 221, 203, 1),
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Boy",
                  style: TextStyle(
                      color: Color.fromRGBO(3, 54, 73, 1),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(
                      boy.toString(),
                      style: TextStyle(
                          color: Color.fromRGBO(3, 54, 73, 1),
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "cm",
                      style: TextStyle(
                          color: Color.fromRGBO(3, 54, 73, 1),
                          fontSize: 30.0,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                    thumbColor: Color.fromRGBO(3, 54, 73, 1),
                    //  overlayColor: Color.fromRGBO(3, 101, 100, 1),
                    activeTrackColor: Color.fromRGBO(3, 54, 73, 1),
                    inactiveTrackColor: Color.fromRGBO(3, 101, 100, 1),
                  ),
                  child: Slider(
                    value: boy.toDouble(),
                    min: 50,
                    max: 200,
                    onChanged: (double yeniDeger) {
                      setState(() {
                        boy = yeniDeger.round();
                      });
                    },
                  ),
                )
              ],
            ),
          )),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                  child: HesapCard(
                renk: Color.fromRGBO(232, 221, 203, 1),
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "KİLO",
                      style: TextStyle(
                          color: Color.fromRGBO(3, 54, 73, 1),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      kilo.toString(),
                      style: TextStyle(
                          color: Color.fromRGBO(3, 54, 73, 1),
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButtonCustom(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                kilo--;
                              });
                            }),
                        SizedBox(
                          width: 10,
                        ),
                        IconButtonCustom(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                kilo++;
                              });
                            }),
                      ],
                    )
                  ],
                ),
              )),
              Expanded(
                  child: HesapCard(
                renk: Color.fromRGBO(232, 221, 203, 1),
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "YAş",
                      style: TextStyle(
                          color: Color.fromRGBO(3, 54, 73, 1),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      yas.toString(),
                      style: TextStyle(
                          color: Color.fromRGBO(3, 54, 73, 1),
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButtonCustom(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                yas--;
                              });
                            }),
                        SizedBox(
                          width: 10,
                        ),
                        IconButtonCustom(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                yas++;
                              });
                            }),
                      ],
                    )
                  ],
                ),
              )),
            ],
          )),
          HesapButon(
            baslik: "HESAPLA",
            onTap: () {
              HesaplamaAlani hesap = HesaplamaAlani(boy: boy, kilo: kilo);
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SonucSayfasi(
                  sonuc: hesap.hesapla(),
                  sonucText: hesap.sonucGetir(),
                  sonucYorum: hesap.yorumGetir(),
                );
              }));
            },
          )
        ],
      ),
    );
  }
}
