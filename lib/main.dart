import 'package:flutter/material.dart';
import 'input_page.dart';
void main() {
  runApp(Bmi_calc());
}

// ignore: camel_case_types
class Bmi_calc extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(

          primaryColor: Color(0xFF111639),
          backgroundColor: Color(0xff0C1135),
          scaffoldBackgroundColor: Color(0xff0C1135),
        ),

      home: Input_page()
    );
  }
}

// ignore: camel_case_types
