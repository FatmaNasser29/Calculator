import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  String label;

  CalculatorButton({required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ElevatedButton(
      onPressed: () {},
      child: Text(
        "4",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      ),
    ));

    ;
  }
}
