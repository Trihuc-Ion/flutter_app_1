import 'package:flutter/material.dart';
import 'package:flutter_application_1/styles/app_styles.dart';

class RecommendationHeader extends StatelessWidget{
  const RecommendationHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: AppStyles.horizontalPadding, top: 32),
      child: Text(
        "Recommendation",
        style: Theme.of(context).textTheme.displayMedium,
      ),
    );
  }
}