import 'package:flutter/material.dart';

class TitleAndBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: const EdgeInsets.all(30),
        child: Container(
          child: Text(
            'Developed by Sanjib Sinha',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
