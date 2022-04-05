import 'package:flutter/material.dart';

class tarif extends StatelessWidget {
  const tarif({Key? key, required this.yemekAdi, required this.yemekTuru, required this.tarih, required this.aciklama, required this.resimYolu}) : super(key: key);

  final String yemekAdi;
  final String yemekTuru;
  final String tarih;
  final String aciklama;
  final String resimYolu;



  @override
  Widget build(BuildContext context) {

    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    appBar: AppBar(
      centerTitle: true,
      title: const Text('Tarif'),
      backgroundColor: Colors.redAccent,
    );

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                  width: ekranGenisligi,
                  child: Image.asset(resimYolu)
              ),
              SizedBox(
                height: ekranGenisligi/8,
                child: TextButton(
                  child: Yazi('Yorum Yap', ekranGenisligi/20),
                  onPressed: (){},
                  style: TextButton.styleFrom(
                    primary: Colors.deepOrangeAccent,
                    backgroundColor: Colors.orange,
                  ),
                ),
              ),
              Row(
                children: [
                  Text(yemekTuru,
                     style: TextStyle
                     (
                       color: Colors.red,
                       fontWeight: FontWeight.bold, // makarna yazısının kalın olması için
                       fontSize: ekranGenisligi/20,
                      ),
                    ),
                  Spacer(),
                ],
              ),
              Row(
                children: [
                  Yazi(yemekAdi, ekranGenisligi/25),
                  Spacer(),
                  Yazi(tarih, ekranGenisligi/25),
                ],
              ),
              SizedBox(
                height: ekranYuksekligi*0.5,
                child: SingleChildScrollView( // widgetin alta doğru genişlemesini sağladık.
                  scrollDirection: Axis.vertical,
                  child: Padding(
                  padding: EdgeInsets.all(ekranYuksekligi/200),
                  child: Yazi(aciklama, ekranGenisligi/25),
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class Yazi extends StatelessWidget {

  String icerik;
  double yaziBoyutu;
  Yazi(this.icerik,this.yaziBoyutu); // consturctor

  @override
  Widget build(BuildContext context) {
    return Text(icerik,style: TextStyle(fontSize: yaziBoyutu),);
  }
}
