import 'package:flutter/material.dart';
import 'new_transaction.dart';
import 'transaction_list.dart';
import 'user_transaction.dart';
import '../models/transaction.dart';

class TestThis extends StatefulWidget {
  const TestThis({Key? key}) : super(key: key);

  @override
  _TestThisState createState() => _TestThisState();
}

final List<Transaction> _transaction = [
  Transaction(id:DateTime.now(), title:'Shoes', amount:23.12, date:DateTime.now()), Transaction(id:DateTime.now(), title:'Shoes', amount:23.12, date:DateTime.now());
];

void addThis(String txtPrice, double txtAmount) {
  final addNow = Transaction(
      id: DateTime.now(),
      title: txtPrice,
      amount: txtAmount,
      date: DateTime.now());
}

class _TestThisState extends State<TestThis> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
