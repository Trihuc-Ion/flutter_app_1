import 'package:flutter/material.dart';
// import 'package:flutter_application_1/page/lab1_avg_speedCalculator.dart';
import 'package:flutter_application_1/page/lab2_homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      // home: AVGSpeedCalculatorPage(title: 'AVGSpeedCalculator'),
      home: HomePage(),
    );
  }
}