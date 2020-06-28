import 'package:flutter/material.dart';

class PracticeAppOne extends StatefulWidget {
  @override
  _PracticeAppOneState createState() => _PracticeAppOneState();
}

class _PracticeAppOneState extends State<PracticeAppOne> {
  var _pressButtonToIncreaseOne = 0;

  void _pressButtonToIncrease() {
    _pressButtonToIncreaseOne = _pressButtonToIncreaseOne + 1;
    print(_pressButtonToIncreaseOne);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The First Stateful App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'This is first stateful widget practice...',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.00,
              ),
            ),
            RaisedButton(
              child: Text(
                'Press the button to increase One!',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.blue,
                ),
              ),
              disabledColor: Colors.redAccent,
              onPressed: _pressButtonToIncrease,
            ),
          ],
        ),
      ),
    );
  }
}
