import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SuPage extends StatefulWidget {
  @override
  _SuPageState createState() => _SuPageState();
}

var deger;

class _SuPageState extends State<SuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
      ),
      backgroundColor: Colors.blue[50],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'İÇMENİZ GEREKEN GÜNLÜK SU MİKTARI: {$context} ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: TextField(
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.blue,
                  textAlign: TextAlign.center,
                  // ignore: deprecated_member_use
                  inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(
                      hintText:
                          'ml cinsinden bugün tükettiğiniz su miktarını giriniz ',
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10))))),
            ),
            Text('1 Su Bardağı : 200ml'),
            Text('1 Şişe Su : 500ml'),
            Text('1 Büyük Şişe Su : 1500ml')
          ],
        ),
      ),
    );
  }
}
