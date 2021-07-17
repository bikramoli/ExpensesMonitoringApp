import './models/chart.dart';
import 'package:intl/intl.dart';
import './widgets/user_transaction.dart';
import 'package:flutter/material.dart';

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

class MyHomePage extends StatelessWidget {
  final List<Chart> chart = [
    Chart(date: DateTime.now(), cal: '63%'),
    Chart(date: DateTime.now(), cal: '90%'),
    Chart(date: DateTime.now(), cal: '80%')
  ];
  //final df = new DateFormat('MM');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expenses Monitor'),
      ),
      body: Container(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [ 
            Card(
                elevation: 5,
                color: Colors.yellow,
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(5),
                  child: Row(
                      children: chart.map((ch) {
                    return Card(
                      child: Column(
                        children: [
                          Text(DateFormat('MM').format(ch.date)),
                          Text(ch.cal)
                        ],
                      ),
                    );
                  }).toList()),
                )),
            UserTransaction()
          ],
        ),
      ),
    );
  }
}
