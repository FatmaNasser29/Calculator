import 'package:calculator/calculator_button.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static const String routeName = "home";
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String resultScreen = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          // centerTitle: false,
          title: Text(
            "Calculator",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.greenAccent),
          ),
        ),
        body: Container(
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      resultScreen,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          color: Colors.white),
                    ),
                  )),
              Expanded(
                child: Container(
                  color: Colors.black,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CalculatorButton(
                        label: "7",
                        onClick: onButtonClicked,
                      ),
                      CalculatorButton(
                        label: "8",
                        onClick: onButtonClicked,
                      ),
                      CalculatorButton(
                        label: "9",
                        onClick: onButtonClicked,
                      ),
                      CalculatorButton(
                        label: "/",
                        onClick: onOperatorClicked,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.black,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CalculatorButton(
                        label: "4",
                        onClick: onButtonClicked,
                      ),
                      CalculatorButton(
                        label: "5",
                        onClick: onButtonClicked,
                      ),
                      CalculatorButton(
                        label: "6",
                        onClick: onButtonClicked,
                      ),
                      CalculatorButton(
                        label: "*",
                        onClick: onOperatorClicked,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.black,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CalculatorButton(
                        label: "1",
                        onClick: onButtonClicked,
                      ),
                      CalculatorButton(
                        label: "2",
                        onClick: onButtonClicked,
                      ),
                      CalculatorButton(
                        label: "3",
                        onClick: onButtonClicked,
                      ),
                      CalculatorButton(
                        label: "+",
                        onClick: onOperatorClicked,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.black,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CalculatorButton(
                        label: "0",
                        onClick: onButtonClicked,
                      ),
                      CalculatorButton(
                        label: ".",
                        onClick: onButtonClicked,
                      ),
                      CalculatorButton(
                        label: "=",
                        onClick: onButtonClicked,
                      ),
                      CalculatorButton(
                        label: "-",
                        onClick: onOperatorClicked,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onButtonClicked(label) {
    resultScreen += label;
    setState(() {});
  }

  String op = "";
  String LHS = "";

  String calculate(String lhs, String op, String rhs) {
    double LHS = double.parse(lhs);
    double RHS = double.parse(rhs);

    if (op == "+") {
      double res = LHS + RHS;
      return res.toString();
    } else if (op == "-") {
      double res = LHS - RHS;
      return res.toString();
    } else if (op == "*") {
      double res = LHS * RHS;
      return res.toString();
    } else if (op == "/") {
      double res = LHS / RHS;
      return res.toString();
    } else {
      return "";
    }
  }

  onOperatorClicked(label) {
    if (op.isEmpty) {
      LHS = resultScreen;
      // op = label;
      // resultScreen = '';
    } else {
      resultScreen = calculate(LHS, op, resultScreen);
      LHS = resultScreen;
      // op = label;
      // resultScreen = '';
    }
    op = label;
    resultScreen = '';
    setState(() {});
    print(LHS);
  }
}
