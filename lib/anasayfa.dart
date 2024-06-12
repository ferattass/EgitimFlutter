import 'package:flutter/material.dart';
import 'package:egitim/renkler.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranGenisligi = ekranBilgisi.size.width;
    final double ekranYuksekligi = ekranBilgisi.size.height;
    print("Ekran Yüksekligi : $ekranYuksekligi ");
    print("Ekran Genisligi : $ekranGenisligi ");

    var d = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'QrFooder',
          style: TextStyle(
            color: yaziRenk1,
            fontFamily: "LogoFont",
            fontSize: ekranGenisligi / 15,
          ), //Const olunca sabit oluyo dikkat
        ),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: ekranYuksekligi / 50),
            child: Text(
              d!.pizzaBaslik,
              style: TextStyle(
                  fontSize: 35, color: anaRenk, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Image.asset("assets/pizza.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Chip(icerik: d.peynirYazi),
                Chip(icerik: d.sucukYazi),
                Chip(icerik: d.zeytinYazi),
                Chip(icerik: d.biberYazi)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  d.teslimatSure,
                  style: TextStyle(
                      fontSize: 22,
                      color: yaziRenk2,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    d.teslimatBaslik,
                    style: TextStyle(
                        fontSize: 22,
                        color: anaRenk,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  d.pizzaAciklama,
                  style: TextStyle(
                    fontSize: 22,
                    color: yaziRenk2,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  d.fiyat,
                  style: TextStyle(
                      fontSize: 35,
                      color: anaRenk,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: ekranGenisligi / 2,
                  height: 50,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: anaRenk,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5)))),
                    child: Text(
                      d.buttonYazi,
                      style: TextStyle(color: yaziRenk1, fontSize: 18),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Chip extends StatelessWidget {
  String icerik;
  Chip({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(backgroundColor: anaRenk),
      child: Text(
        icerik,
        style: TextStyle(color: yaziRenk1),
      ),
    ); //
  }
}
