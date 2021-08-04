import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MenimApp());
}

class MenimApp extends StatelessWidget {
  const MenimApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Bu gun ne yesem',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  _YemekSayfasiState createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int number = 1;

  List<String> yemekAdlari = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık'
  ];
  List<String> tatliAdlari = [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma'
  ];

  List<String> corbaAdlari = [
    'Mercimek',
    'Tarhana',
    'Tavuksuyu',
    'Dugun Corbasi',
    'Yogurtlu corba'
  ];

  void yemekleriYenile() {
    setState(() {
      number = Random().nextInt(5) + 1;
    });
  }

  void corbaIsimleri() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              // ignore: deprecated_member_use
              child: FlatButton(
                highlightColor: Colors.white,
                splashColor: Colors.white,
                onPressed: yemekleriYenile,
                child: Image.asset('assets/corba_$number.jpg'),
              ),
            ),
          ),
          Text(
            corbaAdlari[number - 1],
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              // ignore: deprecated_member_use
              child: FlatButton(
                highlightColor: Colors.white,
                splashColor: Colors.white,
                onPressed: yemekleriYenile,
                child: Image.asset('assets/yemek_$number.jpg'),
              ),
            ),
          ),
          Text(
            yemekAdlari[number - 1],
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              // ignore: deprecated_member_use
              child: FlatButton(
                onPressed: yemekleriYenile,
                child: Image.asset('assets/tatli_$number.jpg'),
              ),
            ),
          ),
          Text(
            tatliAdlari[number - 1],
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
