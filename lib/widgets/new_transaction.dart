import 'package:flutter/material.dart';
import './user_transaction.dart';

class New_transaction extends StatelessWidget {
  final titleInput = TextEditingController();
  final amountInput = TextEditingController();
  final addNewT;
  New_transaction(this.addNewT);

  void addT() {
    final titleSet = titleInput.text;
    final amountSet = double.parse(amountInput.text);

    if (titleSet.isEmpty || amountSet <= 0) {
      return;
    }
    addNewT(titleSet, amountSet);
  }

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
                onSubmitted: (_) => addT()),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountInput,
              onSubmitted: (_) => addT(),
              keyboardType: TextInputType.number,
            ),
            FlatButton(
                color: Colors.blue,
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  addT();
                })
          ],
        ),
      ),
    );
  }
}
