import 'package:flutter/material.dart';
import './user_transaction.dart';

class New_transaction extends StatelessWidget {
  final titleInput = TextEditingController();
  final amountInput = TextEditingController();
  final addNewT;
  New_transaction(this.addNewT);

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
            RaisedButton(
                color: Colors.blue,
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  addNewT(titleInput.text, double.parse(amountInput.text));
                })
          ],
        ),
      ),
    );
  }
}
