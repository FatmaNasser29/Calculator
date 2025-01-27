import 'package:calculator/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Calculator());
}

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(),
      routes: {
        Home.routeName: (context) => Home(),
      },
      initialRoute: Home.routeName,
    );
  }
}
