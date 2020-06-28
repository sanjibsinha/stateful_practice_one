import 'package:flutter/material.dart';
import 'package:learningstatefulwidget/state_practice_one/practice_app_one.dart';

class MyPracticeAppOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practice State',
      home: PracticeAppOne(),
    );
  }
}
