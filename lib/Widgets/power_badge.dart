import 'package:flutter/material.dart';

class PowerBaged extends StatelessWidget {
  final String tital;

  const PowerBaged({super.key, required this.tital});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 4.0),
      margin: const EdgeInsets.symmetric(vertical: 3.0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.3),
        borderRadius: BorderRadius.circular(26.0),
      ),
      child: Text(tital, style:const TextStyle(color: Colors.white),),
    );
  }
}
