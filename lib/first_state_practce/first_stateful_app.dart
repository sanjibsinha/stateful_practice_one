import 'package:flutter/material.dart';

class FirstStatefulApp extends StatefulWidget {
  @override
  _FirstStatefulAppState createState() => _FirstStatefulAppState();
}

class _FirstStatefulAppState extends State<FirstStatefulApp> {
  double _increment = 0;
  double _display = 0;  

  void _increaseByTwo() {
    setState(() {
      _increment++;
      _increment++;
    });
  }

  void _displayNumber() {
    _display = _increment / 2; 
  }
    

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Stateful App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You can press the button to see the result!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Text(
              '{$_increment}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            RaisedButton(
              child: Text(
                'Press the button to increase by 2!',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.blue,
                ),
              ),
              textColor: Colors.blue,
              onPressed: () {
                _increaseByTwo();
                _displayNumber();
              },
            ),
            Text(
              'You have pressed the button {$_display} times.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
