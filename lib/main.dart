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
  var number = 1;

  void expensesE() {
    setState(() {
      number = 2;
    });
  }

  void earningE() {
    setState(() {});
  }

  void reset() {
    setState(() {
      number = 1;
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
      ),
      body: Container(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            number == 1
                ? Landing(
                    expenses: expensesE,
                    earning: earningE,
                  )
                : number == 2
                    ? UserTransaction()
                    : Text('this')
          ],
        ),
      ),
    );
  }
}
