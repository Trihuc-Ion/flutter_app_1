import 'package:flutter/material.dart';
import 'package:flutter_app/resources/app_colors.dart';

ThemeData lightTheme(){
  return ThemeData(
    // brightness: Brightness.light,
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        fontSize: 26,
        color: AppColors.regularTitleColor,
        fontWeight: FontWeight.w600,
        height: 1,
      ),

      headlineMedium: TextStyle(
        fontSize: 24,
        color: AppColors.regularTitleColor,
        fontWeight: FontWeight.w600,
        height: 1
      ),

      headlineSmall: TextStyle(
        fontSize: 20,
        color: AppColors.regularTitleColor,
        fontWeight: FontWeight.w500,
        height: 1
      ),

      titleLarge: TextStyle(
        fontSize: 20,
        color: AppColors.regularTitleColor,
        fontWeight: FontWeight.w700,
        height: 28 / 20
      ),

      titleMedium: TextStyle(
        fontSize: 18,
        color: AppColors.regularTitleColor,
        fontWeight: FontWeight.w700,
        height: 24 / 18
      ),

      displayLarge: TextStyle(
        fontFamily: 'SourceSans3',
        fontSize: 18,
        color: AppColors.regularInfoColor,
        fontWeight: FontWeight.w400,
        height: 1,
        letterSpacing: 0
      ),

      displayMedium: TextStyle(
        fontFamily: 'SourceSans3',
        fontSize: 16,
        color: AppColors.regularInfoColor,
        fontWeight: FontWeight.w400,
        height: 1,
        letterSpacing: 0
      ),

      bodyMedium: TextStyle(
        fontFamily: 'SourceSans3',
        fontSize: 16,
        color: AppColors.regularContentColor,
        fontWeight: FontWeight.w400,
        height: 26 / 16,
        letterSpacing: 0
      ),

      labelLarge: TextStyle(
        fontSize: 16,
        color: AppColors.followColor,
        fontWeight: FontWeight.w500,
        height: 1
      ),

      labelMedium: TextStyle(
        fontFamily: 'SourceSans3',
        fontSize: 14,
        color: AppColors.regularBoxCategoryColor,
        fontWeight: FontWeight.w600,
        height: 1,
        letterSpacing: 0
      ),

      labelSmall: TextStyle(
        fontFamily: 'SourceSans3',
        fontSize: 12,
        color: AppColors.regularCategoryColor,
        fontWeight: FontWeight.w600,
        height: 1,
        letterSpacing: 0
      ),
    ),
  );
}