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
            color: Colors.green,
            width: 180,
            height: 100,
            margin: EdgeInsets.all(10),
            child: RaisedButton(
              onPressed: expenses,
              child: Text(
                'Expenses',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
          Container(
              color: Colors.green,
              width: 180,
              height: 100,
              child: RaisedButton(
                  onPressed: earning,
                  child: Text(
                    'Earning',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  )))
        ],
      ),
    );
  }
}
