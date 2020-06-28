import 'package:flutter/material.dart';

class OnlyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Text(
          'Sanjib Sinha writes stories and code, not in the same order always...',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          softWrap: true,
        ),
      ),
    );
  }
}
