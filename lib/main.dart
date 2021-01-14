import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Expense Tracker App"),
          ),
          body: Column(children: <Widget>[
            Card(
              child: Container(
                  width: double.infinity,
                  color: Colors.red,
                  child: Text("Chart")),
            ),
            Card(
              child: Text("List of transactions"),
            ),
          ])),
    );
  }
}
