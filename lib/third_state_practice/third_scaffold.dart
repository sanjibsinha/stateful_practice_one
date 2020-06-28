import 'package:flutter/material.dart';
import 'package:learningstatefulwidget/third_state_practice/only_body.dart';
import 'package:learningstatefulwidget/third_state_practice/title_andbody.dart';

class ScaffoldingStateWidget extends StatefulWidget {
  @override
  _ScaffoldingStateWidgetState createState() => _ScaffoldingStateWidgetState();
}

class _ScaffoldingStateWidgetState extends State<ScaffoldingStateWidget> {
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
        title: Text('My Second Stateful App'),
      ),
      body: ListView(
        children: [
          Image.asset(
            'images/sanjib.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          TitleAndBody(),
          OnlyBody(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(32),
                child: Row(
                  children: [
                    Expanded(
                      /*1*/
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /*2*/
                          Container(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Text(
                              'Number is increased by 2: {$_increment}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Text(
                              'Button is pressed by {$_display} times.',
                              style: TextStyle(
                                color: Colors.grey[800],
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //FavoriteWidget(),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child: Text(
                      'Press me!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 29.00,
                      ),
                    ),
                    onPressed: () {
                      _increaseByTwo();
                      _displayNumber();
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
