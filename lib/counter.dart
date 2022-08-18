import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  //Variables
  int counter = 0;


  //Override Methods
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter: $counter'),
            TextButton(
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              child: const Text('Click me'),
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.blue,
                padding: EdgeInsets.all(10),
              ),
            )
          ],
        ),
      ),
    );
  }
}
