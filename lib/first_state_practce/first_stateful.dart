import 'package:flutter/material.dart';
import 'package:learningstatefulwidget/first_state_practce/first_stateful_app.dart';

class FirstStateful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First Stateful App',
      home: FirstStatefulApp(),
    );
  }
}
