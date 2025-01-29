import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  String label;
  Function onClick;
  CalculatorButton({required this.label, required this.onClick, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            backgroundColor: Colors.grey,
            foregroundColor: Colors.white),
        onPressed: () {
          onClick(label);
        },
        child: Text(
          label,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
        ),
      ),
    ));

    ;
  }
}
