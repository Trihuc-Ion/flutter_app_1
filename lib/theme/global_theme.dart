import 'package:flutter/material.dart';

ThemeData lightTheme(){
  return ThemeData(
    brightness: Brightness.light,
    textTheme: TextTheme(
      displayLarge: TextStyle(
        color: Color.fromRGBO(26, 26, 26, 1),
        fontSize: 26,
        fontWeight: FontWeight.w600,
        height: 1
      ),
      displayMedium: TextStyle(
        color: Color.fromRGBO(26, 26, 26, 1),
        fontSize: 20,
        fontWeight: FontWeight.w500,
        height: 1
      ),
      displaySmall: TextStyle(
        color: Color.fromRGBO(26, 26, 26, 1),
        fontSize: 18,
        fontWeight: FontWeight.w700,
        height: 24 / 18
      ),
      bodyLarge: TextStyle(
        fontFamily: 'SourceSans3',
        color: Color.fromRGBO(153, 153, 153, 1),
        fontSize: 18,
        fontWeight: FontWeight.w400,
        height: 1
      ),
      bodyMedium: TextStyle(
        fontFamily: 'SourceSans3',
        color: Color.fromRGBO(153, 153, 153, 1),
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1
      ),
    ),
      // primaryColor: ,
      // colorScheme: ColorScheme.light(

      // )
  );
}
  