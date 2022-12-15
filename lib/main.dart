import 'package:bmi_calculator/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: Color(0xFFEB1555),
        ).copyWith(
          primary: Color(0xFF0A0E21),
        ),
      ),
      initialRoute: '/input',
      routes: {
        '/input': (context) => InputPage(),
        '/result': (context) => ResultPage(
          bmi: '',
          result: '',
          interpretation: '',
        ),
      },
    );
  }
}


