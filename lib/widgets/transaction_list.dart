import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> uTransaction;
  TransactionList(this.uTransaction);

  @override
  Widget build(BuildContext context) {
    return uTransaction.isEmpty
        ? Container(
            margin: EdgeInsets.only(top: 30),
            child: Text(
              'No transactions to show!!!',
              style: TextStyle(fontSize: 30),
            ),
          )
        : Container(
            height: 500,
            child: ListView(
                children: uTransaction.map((tx) {
              return ListTile(
                  leading: CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 40,
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: FittedBox(
                        child: Text(
                      '\Rs ${tx.amount.toString()}',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ))),
              ));
              /* Card(
                elevation: 20,
                child: Row(
                  children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Theme.of(context).primaryColor,
                                  width: 2)),
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(
                              right: 20, left: 10, top: 10, bottom: 10),
                          child: Text(
                            '\Rs ${tx.amount.toString()}',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple),
                          )),
                    ),
                    Container(
                      width: 230,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tx.title,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
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
              ); */
            }).toList()),
          );
  }
}
