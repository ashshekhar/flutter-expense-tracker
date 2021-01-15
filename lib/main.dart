import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
            backgroundColor: Colors.red,
          ),
          body: Column(children: <Widget>[
            Card(
              child: Container(
                  width: double.infinity,
                  color: Colors.red,
                  child: Text("Chart")),
            ),
            Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(labelText: "Name"),
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: "Amount"),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text("Add transaction"),
                      textColor: Colors.blue,
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: transactions.map((transaction) {
                return Card(
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 15,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Text(
                          '\$${transaction.amount}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.cyan),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            transaction.name,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            DateFormat.yMMMd().format(transaction.date),
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ])),
    );
  }
}
