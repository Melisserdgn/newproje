import 'package:flutter/material.dart';
import 'package:new_proje/test_veri.dart';

void main() => runApp(BilgiTesti());

class BilgiTesti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Color.fromARGB(170, 194, 6, 6),
            body: SafeArea(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: SoruSayfasi(),
            ))));
  }
}

class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {
  List<Widget> secimler = [];

  TestVeri test_1 = TestVeri();

  _SoruSayfasiState();
  void butonFonksiyonu(bool secilenButon) {
    if (test_1.testBittiMi() == true) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("BRAVO TESTİ GEÇTİNİZ!"),
            // content: new Text("alert dialog"),
            actions: <Widget>[
              new FlatButton(
                child: new Text("BAŞA DÖN"),
                onPressed: () {
                  Navigator.of(context).pop();
                  setState(() {
                    test_1.testiSifirla();
                    secimler = [];
                  });
                },
              ),
            ],
          );
        },
      );
    } else {
      setState(() {
        test_1.getsoruYaniti() == secilenButon
            ? secimler.add(dogruIconu)
            : secimler.add(yanlisIconu);
        test_1.sonrakiSoru();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                test_1.getsoruMetni(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Wrap(
          runSpacing: 3,
          spacing: 3,
          children: secimler,
        ),
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: <Widget>[
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(15),
                          textColor: Colors.white,
                          color: Colors.red[400],
                          child: Text('YANLIŞ'),
                          onPressed: () {
                            butonFonksiyonu(false);
                          },
                        ))),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(15),
                          textColor: Colors.white,
                          color: Colors.green[400],
                          child: Text('DOĞRU'),
                          onPressed: () {
                            butonFonksiyonu(true);
                          },
                        ))),
              ])),
        )
      ],
    );
  }
}

class SoruYaniti {}

const dogruIconu = Icon(Icons.mood, color: Colors.green);
const yanlisIconu = Icon(Icons.mood_bad, color: Colors.red);
