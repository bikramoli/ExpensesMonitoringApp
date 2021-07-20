import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  final expenses;
  final earning;
  Landing({this.earning, this.expenses});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/landing.jpg'), fit: BoxFit.cover)),

      /// this only set color for container
      margin: EdgeInsets.only(top: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            elevation: 100,
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 4),
                  borderRadius: BorderRadius.circular(12)),
              width: 180,
              height: 100,
              child: RaisedButton(
                color: Colors.blue,
                onPressed: expenses,
                child: Text(
                  'दिएको रकम',
                  style: TextStyle(color: Colors.white, fontSize: 26),
                ),
              ),
            ),
          ),
          Card(
            elevation: 100,
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 4),
                    borderRadius: BorderRadius.circular(12)),
                width: 180,
                height: 100,
                child: RaisedButton(
                    color: Colors.blue,
                    onPressed: earning,
                    child: Text(
                      'लिइएको रकम',
                      style: TextStyle(color: Colors.white, fontSize: 26),
                    ))),
          )
        ],
      ),
    );
  }
}
