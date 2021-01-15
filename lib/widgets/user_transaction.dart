import 'package:flutter/material.dart';

import '../models/transaction.dart';
import './new_transaction.dart';
import './transaction_list.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  @override
  final List<Transaction> _userTransactions = [
    Transaction(id: '1', name: 'Shoes', amount: 69.00, date: DateTime.now()),
    Transaction(id: '2', name: 'House', amount: 6129.00, date: DateTime.now())
  ];

  void _addTransaction(String name, double amount) {
    final newTransaction = Transaction(
        name: name,
        amount: amount,
        date: DateTime.now(),
        id: DateTime.now().toString());

    setState(() {
      _userTransactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
