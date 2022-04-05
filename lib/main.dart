import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:yemek_tarifleri/anasayfa.dart';
import 'package:yemek_tarifleri/tarif.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('NE PİŞİRSEM ?'),
        backgroundColor: Colors.pink,
      ),
    backgroundColor: Colors.deepPurple,
      body: Center(
        child: SingleChildScrollView( // klavye ekrana gelince üzerindeki şeriti kaldırır
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: ekranYuksekligi/20),
                child: SizedBox(
                  width: ekranGenisligi/4,
                  height: ekranYuksekligi/6,
                  child: Image.asset('resimler/aşcı.png'),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(ekranYuksekligi/30),
                child: const TextField( // KULLANICI ADI KISMI İÇİN OLUŞTURDUK
                  decoration: InputDecoration(
                    hintText: "Kullanıcı Adı", // YAZILARIN GÖZÜKMESİ İÇİN
                    filled: true, // ARKA PLAN İÇİN
                    fillColor: Colors.white, //ARKA PLAN RENGİ AYARLANDI
                    border: const OutlineInputBorder( //ARKA PLAN KUTUSUNUN KÖŞELERİNİ OVALLEŞTİRDİK
                      borderRadius: BorderRadius.all(Radius.circular(10.0))//KÖŞE OVAL AYARINI YAPTIK
                    )
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(ekranYuksekligi/30),
                child: const TextField( // KULLANICI ADI KISMI İÇİN OLUŞTURDUK
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Şifre", // YAZILARIN GÖZÜKMESİ İÇİN
                      filled: true, // ARKA PLAN İÇİN
                      fillColor: Colors.white, //ARKA PLAN RENGİ AYARLANDI
                      border: OutlineInputBorder( //ARKA PLAN KUTUSUNUN KÖŞELERİNİ OVALLEŞTİRDİK
                          borderRadius: BorderRadius.all(Radius.circular(10.0))//KÖŞE OVAL AYARINI YAPTIK
                      )
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(ekranYuksekligi/25),
                child: SizedBox(
                  width: ekranGenisligi/2,
                  height: ekranYuksekligi/12,
                  child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      primary: Colors.pink,
                      onPrimary: Colors.white,
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  anasayfa()),
                      );
                    },
                    child: Text('GİRİŞ YAP',style: TextStyle(fontSize: ekranGenisligi/25),),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  print('yardım seçildi');
              },
                child: Text('YARDIM',
                  style: TextStyle(
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                    fontSize: ekranGenisligi/30,
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
