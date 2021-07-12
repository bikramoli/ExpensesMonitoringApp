import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatefulWidget {
  @override
  _TransactionState createState() => _TransactionState();
}

class _TransactionState extends State<TransactionList> {
  final List<Transaction> _transaction = [
    Transaction(
        id: 't1', title: 'New shoes', amount: 50.21, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'Loan Payment', amount: 98.01, date: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
        children: _transaction.map((tx) {
      return Card(
        elevation: 20,
        child: Row(
          children: [
            Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 2)),
                padding: EdgeInsets.all(5),
                margin:
                    EdgeInsets.only(right: 20, left: 10, top: 10, bottom: 10),
                child: Text(
                  '\$ ' + tx.amount.toString(),
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple),
                )),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tx.title,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    DateFormat().format(
                        tx // DateFormat(yyyy-mm-dd) for formating on own way or DateFormat.ymmmd = may 20 2021
                            .date), // need to work on date format by importing intl package after installing intl dependencies
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }).toList());
  }
}
