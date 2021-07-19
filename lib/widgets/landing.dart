import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  final expenses;
  final earning;
  Landing({this.earning, this.expenses});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.green, width: 4),
                borderRadius: BorderRadius.circular(12)),
            width: 180,
            height: 100,
            child: RaisedButton(
              color: Colors.red,
              onPressed: expenses,
              child: Text(
                'दिएको रकम',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
          Container(
              width: 180,
              height: 100,
              child: RaisedButton(
                  color: Colors.red,
                  onPressed: earning,
                  child: Text(
                    'लिइएको रकम',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  )))
        ],
      ),
    );
  }
}
