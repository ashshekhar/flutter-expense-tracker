import 'package:flutter/material.dart';

import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(id: '1', name: 'Shoes', amount: 69.00, date: DateTime.now()),
    Transaction(id: '2', name: 'House', amount: 6129.00, date: DateTime.now())
  ];

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
            Column(
              children: transactions.map((transaction) {
                return Card(
                  child: Text(transaction.name),
                );
              }).toList(),
            ),
          ])),
    );
  }
}
