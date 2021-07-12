import './transaction.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expenses Monitoring',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: 't1', title: 'New shoes', amount: 50.21, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'Loan Payment', amount: 98.01, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expenses Monitor'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              elevation: 5,
              color: Colors.yellow,
              child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Card(
                        child: Text('this'),
                      ),
                      Card(
                        child: Text('this'),
                      )
                    ],
                  )),
            ),
            Column(
                children: transactions.map((tx) {
              return Card(
                elevation: 20,
                child: Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue, width: 2)),
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(
                            right: 20, left: 10, top: 10, bottom: 10),
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
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            tx.date.toString(),
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            }).toList())
          ],
        ),
      ),
    );
  }
}
