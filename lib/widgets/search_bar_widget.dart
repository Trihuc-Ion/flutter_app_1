import 'package:flutter/material.dart';
import 'package:flutter_app/resources/app_colors.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key,});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.searchbarColor,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16),
      height: 48,
      child: Row(
        children: [
          Icon(
            Icons.search,
            size: 24,
            color: AppColors.regularTitleColor,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text('Search "News"', style: TextTheme.of(context).displayLarge),
            ),
          ),
        ],
      ),
    );
  }
}