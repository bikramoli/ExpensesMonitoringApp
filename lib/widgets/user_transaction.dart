import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';
import '../models/chart.dart';
import '../widgets/chart.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _transaction = [
    Transaction(
        id: 't1', title: 'New shoes', amount: 50.21, date: DateTime.now()),
  ];
  final List<Chart> _chart = [
    Chart(date: DateTime.now(), cal: '63%'),
    Chart(date: DateTime.now(), cal: '90%'),
    Chart(date: DateTime.now(), cal: '80%')
  ];

  void addNewTransaction(String txTitle, double txAmount) {
    final addTx = Transaction(
        id: DateTime.now(),
        title: txTitle,
        amount: txAmount,
        date: DateTime.now());

    setState(() {
      _transaction.add(addTx);
    });
  }

  void startAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return New_transaction(addNewTransaction);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Charts(_chart),
        //New_transaction(addNewTransaction),
        TransactionList(_transaction),

        FloatingActionButton(
          onPressed: () => startAddNewTransaction(context),
          child: Icon(Icons.add),
        ),
      ],
    );
  }
}
