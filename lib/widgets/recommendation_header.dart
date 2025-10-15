import 'package:flutter/material.dart';

class RecommendationHeader extends StatelessWidget {
  const RecommendationHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Recommendation",
      style: Theme.of(context).textTheme.displayMedium,
    );
  }
}
