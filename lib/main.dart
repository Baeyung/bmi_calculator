import 'package:flutter/material.dart';
import './input_page.dart';

void main() {
  runApp(const BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0B0D22),
        scaffoldBackgroundColor: const Color(0xFF0B0D22),
      ),
      home: const InputPage(),
    );
  }
}
