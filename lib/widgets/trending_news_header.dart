import 'package:flutter/material.dart';
import 'package:flutter_application_1/styles/app_styles.dart';

class TrendingNewsHeader extends StatelessWidget {
  const TrendingNewsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: AppStyles.horizontalPadding),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Trending News",
                style: Theme.of(context).textTheme.displayMedium,
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "See all",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
