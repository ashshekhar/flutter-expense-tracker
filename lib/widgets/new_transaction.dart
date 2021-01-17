import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addNewTransaction;

  NewTransaction(this.addNewTransaction);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final nameController = TextEditingController();

  final amountController = TextEditingController();

  void _submitData() {
    final enteredTitle = nameController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }

    widget.addNewTransaction(enteredTitle, enteredAmount);

    Navigator.of(context).pop();
  }

  void _DatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2021),
      lastDate: DateTime.now(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "Name"),
              controller: nameController,
              onSubmitted: (_) => _submitData(),
            ),
            TextField(
              decoration: InputDecoration(labelText: "Amount"),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => _submitData(),
            ),
            Container(
              height: 80,
              child: Row(
                children: <Widget>[
                  Text("No date chosen!"),
                  FlatButton(
                    child: Text(
                      "Choose Date",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: _DatePicker,
                  ),
                ],
              ),
            ),
            RaisedButton(
              onPressed: _submitData,
              color: Colors.red[400],
              child: Text(
                "Add transaction",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              textColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
