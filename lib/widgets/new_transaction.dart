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
            FlatButton(
                color: Colors.blue,
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  if (titleInput.text.isEmpty ||
                      double.parse(amountInput.text) <= 0) {
                    return;
                  } else {
                    addNewT(titleInput.text, double.parse(amountInput.text));
                    //this is like popup notification
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content:
                            Text('New transaction added successfully!!!!')));
                  }
                })
          ],
        ),
      ),
    );
  }
}
