import 'package:flutter/material.dart';

class New_transaction extends StatefulWidget {
  final addNewT;

  New_transaction(this.addNewT);

  @override
  _New_transactionState createState() => _New_transactionState();
}

class _New_transactionState extends State<New_transaction> {
  final titleInput = TextEditingController();

  final amountInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleInput,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountInput,
              keyboardType: TextInputType.number,
            ),
            FlatButton(
                color: Theme.of(context).primaryColor,
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  if (titleInput.text.isEmpty ||
                      double.parse(amountInput.text) <= 0) {
                    return;
                  } else {
                    widget.addNewT(
                        titleInput.text, double.parse(amountInput.text));
                    //this is like popup notification
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content:
                            Text('New transaction added successfully!!!!')));
                  }
                }),
          ],
        ),
      ),
    );
  }
}
