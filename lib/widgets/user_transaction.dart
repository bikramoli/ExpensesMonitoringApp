import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _transaction = [
    Transaction(
        id: 't1', title: 'New shoes', amount: 50.21, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'Loan Payment', amount: 98.01, date: DateTime.now()),
  ];
  void addNewTransaction(String txTitle, bool txAmount) {
    final addTx = Transaction(
        id: DateTime.now(),
        title: txTitle,
        amount: txAmount,
        date: DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [New_transaction(), TransactionList(_transaction)],
    );
  }
}
