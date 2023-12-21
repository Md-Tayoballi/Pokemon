import 'package:flutter/material.dart';

class FeatureValueText extends StatelessWidget {
  final String myText;
  const FeatureValueText({
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
          fontSize: 16.0,
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}