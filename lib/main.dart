import 'package:flutter/material.dart';
import 'package:statefulwidget_workshop/counter.dart';
import 'package:statefulwidget_workshop/attraction.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Attraction(),
    );
  }
}