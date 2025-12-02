import 'package:flutter/material.dart';

class SectionHeaderWidget extends StatelessWidget {
  const SectionHeaderWidget({super.key, required this.title, this.seeAllTap = false});

  final String title;
  final bool seeAllTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            if(seeAllTap)
              InkWell(
                onTap: () {},
                child: Text(
                  "See all",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
          ],
        ),
      ],
    );
  }
}
