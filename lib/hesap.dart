import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'su.dart';

class HesapPage extends StatefulWidget {
  @override
  _HesapPageState createState() => _HesapPageState();
}

class _HesapPageState extends State<HesapPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController myController = new TextEditingController();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[50],
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                  controller: myController,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  maxLength: 3,
                  cursorColor: Colors.blue,
                  textAlign: TextAlign.center,
                  // ignore: deprecated_member_use

                  decoration: InputDecoration(
                      hintText: 'Kilonuzu Giriniz',
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10))))),
              RaisedButton(
                // ignore: unnecessary_statements
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SuPage(
                        myController: myController.text,
                      ),
                    ),
                  );
                },
                child: const Text(
                  'HESAPLA',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
