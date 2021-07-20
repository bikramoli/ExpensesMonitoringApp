import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/chart.dart';

class Charts extends StatelessWidget {
  final List<Chart> charts;
  Charts(this.charts);
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        color: Theme.of(context).primaryColor,
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.all(5),
          child: Row(
              children: charts.map((ch) {
            return Card(
              child: Column(
                children: [
                  Text(DateFormat('MM').format(ch.date)),
                  Text(ch.cal)
                ],
              ),
            );
          }).toList()),
        ));
  }
}
