import './widgets/landing.dart';
import './widgets/transaction_list.dart';
import './models/transaction.dart';
import './models/chart.dart';
import 'package:flutter/material.dart';
import './widgets/chart.dart';
import './widgets/new_transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var page;

  void expensesE() {
    setState(() {
      page = 2;
    });
  }

  void earningE() {
    setState(() {});
  }

  void reset() {
    setState(() {
      page = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Expenses Monitoring',
        theme: ThemeData(primarySwatch: Colors.purple),
        home: Scaffold(
            body: page == 2
                ? MyHomePage()
                : page == 1
                    ? Landing(
                        expenses: expensesE,
                        earning: earningE,
                      )
                    : Landing(
                        expenses: expensesE,
                        earning: earningE,
                      )));
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Chart> _chart = [
    Chart(date: DateTime.now(), cal: '63%'),
    Chart(date: DateTime.now(), cal: '90%'),
    Chart(date: DateTime.now(), cal: '80%')
  ];
  final List<Transaction> _transaction = [
    //Transaction(
    //id: 't1', title: 'New shoes', amount: 50.21, date: DateTime.now()),
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

  final titleInput = TextEditingController();
  final amountInput = TextEditingController();

  void _startAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return New_transaction(addNewTransaction);
      },
    );
  }

  var page;

  void reset() {
    setState(() {
      page = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          alignment: Alignment.center,
          child: FlatButton(
            child: Text(
              'Expenses Monitor',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            onPressed: reset,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () => _startAddNewTransaction(context),
              icon: Icon(Icons.add))
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/landing.jpg'), fit: BoxFit.cover)),
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Charts(_chart),
                //New_transaction(addNewTransaction),
                TransactionList(_transaction),
              ],
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => _startAddNewTransaction(context),
        child: Icon(Icons.add),
      ),
    );
  }
}
