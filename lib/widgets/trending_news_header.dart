import 'package:flutter/material.dart';

class TrendingNewsHeader extends StatelessWidget {
  const TrendingNewsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Trending News",
              style: Theme.of(context).textTheme.displayMedium,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                "See all",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
