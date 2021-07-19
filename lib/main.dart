import 'package:expenses_monitor/widgets/landing.dart';

import './models/chart.dart';
import 'package:intl/intl.dart';
import './widgets/user_transaction.dart';
import 'package:flutter/material.dart';
import './widgets/chart.dart';
import './widgets/landing.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expenses Monitoring',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var page;

  void expensesE() {
    setState(() {
      page = 'transaction_page';
    });
  }

  void earningE() {
    setState(() {});
  }

  void reset() {
    setState(() {
      page = 'landing_page';
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
              'खर्चहरू',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            onPressed: reset,
          ),
        ),
      ),
      body: Container(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            page == 'landing_page'
                ? Landing(
                    expenses: expensesE,
                    earning: earningE,
                  )
                : page == 'transaction_page'
                    ? UserTransaction()
                    : Text('this')
          ],
        ),
      ),
    );
  }
}
