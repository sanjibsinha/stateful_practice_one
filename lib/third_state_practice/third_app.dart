import 'package:flutter/material.dart';
import 'package:learningstatefulwidget/third_state_practice/third_scaffold.dart';

class ThirdStatefulApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Third Stateful App',
      home: ScaffoldingStateWidget(),
    );
  }
}
