import 'package:calculator/calculator_button.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static const String routeName = "home";
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calculator",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Text(
              "233444555",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
            )),
            Expanded(
              child: Container(
                color: Colors.red,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CalculatorButton(
                      label: "7",
                    ),
                    CalculatorButton(
                      label: "8",
                    ),
                    CalculatorButton(
                      label: "9",
                    ),
                    CalculatorButton(
                      label: "+",
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.red,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CalculatorButton(
                      label: "4",
                    ),
                    CalculatorButton(
                      label: "5",
                    ),
                    CalculatorButton(
                      label: "6",
                    ),
                    CalculatorButton(
                      label: "-",
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.red,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CalculatorButton(
                      label: "1",
                    ),
                    CalculatorButton(
                      label: "2",
                    ),
                    CalculatorButton(
                      label: "3",
                    ),
                    CalculatorButton(
                      label: "/",
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.red,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CalculatorButton(
                      label: "0",
                    ),
                    CalculatorButton(
                      label: ".",
                    ),
                    CalculatorButton(
                      label: "00",
                    ),
                    CalculatorButton(
                      label: "*",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
