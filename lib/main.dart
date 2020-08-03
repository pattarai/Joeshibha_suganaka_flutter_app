import 'package:flutter/material.dart';
import 'package:suganaka1/scientific.dart';
import 'drawer.dart';

void main() {
  runApp(MaterialApp(home:HomeScreen()));
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Stack();
  }
}

class _Stack extends State<MyApp> {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scientific Calculator',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.black87,
      ),
      home:ScientificCalculator(),
    );
  }
}
