import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'screens/results.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute:
          '/', //defined routes to be used inside each screen each one will take to the selected screen
      routes: {
        '/': (context) => InputPage(),
      },
    );
  }
}
