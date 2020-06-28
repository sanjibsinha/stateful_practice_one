import 'package:flutter/material.dart';
import 'package:learningstatefulwidget/second_state_practice/second_state_app.dart';

class SecondApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Second Stateful App',
      home: SecondStatefulApp(),
      
    );
  }
}