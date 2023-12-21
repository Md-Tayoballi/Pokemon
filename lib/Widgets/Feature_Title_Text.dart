import 'package:flutter/material.dart';

class FeatureTitleText extends StatelessWidget {
  final String myText;
  const FeatureTitleText({
    super.key,
    required this.myText
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        myText,
        style: const TextStyle(
          fontSize: 18.0,
          color: Colors.blueGrey,
        ),
      ),
    );
  }
}