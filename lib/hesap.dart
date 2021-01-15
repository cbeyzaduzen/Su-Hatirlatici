import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:suhatirlatici/su.dart';

class HesapPage extends StatefulWidget {
  @override
  _HesapPageState createState() => _HesapPageState();
}

class _HesapPageState extends State<HesapPage> {
  var myController = TextEditingController();

  void initState() {
    super.initState();
  }

  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                  onChanged: (myController) {},
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  autocorrect: false,
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
