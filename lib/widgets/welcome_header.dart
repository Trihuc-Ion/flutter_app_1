import 'package:flutter/material.dart';
import 'package:flutter_application_1/styles/app_styles.dart';

class WelcomeHeader extends StatelessWidget {
  final String userName;

  const WelcomeHeader({
    super.key, 
    required this.userName
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: AppStyles.horizontalPadding,
        right: AppStyles.horizontalPadding,
        top: AppStyles.verticalPadding
        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome back, $userName!",
            style: Theme.of(context).textTheme.displayLarge,
            ),
          SizedBox(height: 6),
          Text(
            "Discover a world of news that matters to you",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
