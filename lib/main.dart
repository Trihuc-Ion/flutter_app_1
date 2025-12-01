import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home_page.dart';
import 'package:flutter_app/theme/global_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      // home: AVGSpeedCalculatorPage(title: 'AVGSpeedCalculator'),
      home: HomePage(),
    );
  }
}