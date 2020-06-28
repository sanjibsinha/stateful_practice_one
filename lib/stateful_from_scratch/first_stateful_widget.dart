import 'package:flutter/material.dart';

class FirstStatefulWidget extends StatefulWidget {
  @override
  _FirstStatefulWidgetState createState() => _FirstStatefulWidgetState();
}

class _FirstStatefulWidgetState extends State<FirstStatefulWidget> {

  var _questions = [
      'Who is your favorite author?',
      'What is your favourite book?',
      'What is your favourite movie?',
    ];

  int _questionIndex = 0;

  void _answerQuestions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if(_questionIndex == 3) {
      _questionIndex = 0;
    }
  }

  @override
  Widget build(BuildContext context) {    

    return MaterialApp(
      title: 'First Stateful App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('First Stateful App from Scratch!'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      _questions[_questionIndex],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.00,
                      ),
                    ),
                    Text(
                      'Question Index: {$_questionIndex}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.00,
                      ),
                    ),
                    RaisedButton(
                        child: Text(
                          'Answer Question',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.00,
                            color: Colors.blue,
                          ),
                        ),
                        onPressed: () {
                          _answerQuestions();
                        })
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
