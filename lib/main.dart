import 'package:flutter/material.dart';
import 'package:flutter_application_1/avg_speedCalculator.dart';

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
      home: AVGSpeedCalculatorPage(title: 'Flutter Demo Home Page'),
    );
  }
}