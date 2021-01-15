import 'package:flutter/material.dart';
import 'package:suhatirlatici/hesap.dart';
import 'package:suhatirlatici/su.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: DefaultTabController(
          length: 1,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue[200],
              bottom: TabBar(
                tabs: [                
                  Tab(
                      icon: Icon(
                    Icons.account_box,
                    color: Colors.black,
                    size: 40,
                  )),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                HesapPage(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
