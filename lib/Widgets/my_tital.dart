import 'package:flutter/material.dart';

class MyTital extends StatelessWidget {
  final String mytext;
  final Color color;
  const MyTital({
    super.key,
    required this.mytext,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Text(
        "$mytext",
        style: TextStyle(
          color: color,
          fontSize: 34.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
