import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/chart.dart';
import '../models/transaction.dart';

class Charts extends StatelessWidget {
  final List<Transaction> recentTransaction;
  Charts(this.recentTransaction);
  List<Map<String, Object>> get allTransactionValue {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(
        Duration(days: index),
      );
      double totalSum = 0.0;
      for (var i = 0; i < recentTransaction.length; i++) {
        if (recentTransaction[i].date.day == weekDay.day &&
            recentTransaction[i].date.month == weekDay.month &&
            recentTransaction[i].date.year == weekDay.year) {
          totalSum += recentTransaction[i].amount;
        }
      }
      print(DateFormat.E().format(weekDay));
      print(totalSum);
      return {
        'day': DateFormat.E().format(weekDay),
        'amount': totalSum,
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    // chart updating successfully made
    return Card(
      elevation: 5,
      color: Theme.of(context).primaryColor,
      child: Container(
          width: double.infinity,
          margin: EdgeInsets.all(5),
          child: Row(
            children: allTransactionValue.map((data) {
              return Container(
                child: Card(
                  child: Column(
                    children: [
                      Container(
                          child: Text(
                        '${data['day']}',
                        style: TextStyle(fontSize: 28),
                      )),
                      Container(child: Text('${data['amount']}'))
                    ],
                  ),
                ),
              );
            }).toList(),
          )),
    );
  }
}
