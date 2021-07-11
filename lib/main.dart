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
  const MyHomePage({Key? key}) : super(key: key);

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
            Card(
                color: Colors.blue,
                child: Container(
                    margin: EdgeInsets.all(20),
                    child: Text('List of expenses')))
          ],
        ),
      ),
    );
  }
}
