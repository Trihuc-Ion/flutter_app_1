import 'package:flutter/material.dart';
import 'package:flutter_app/models/enum/publisher_display_type.dart';
import 'package:flutter_app/models/news.dart';
import 'package:flutter_app/resources/app_colors.dart';
import 'package:flutter_app/resources/app_dimensions.dart';
import 'package:flutter_app/widgets/publisher_widget.dart';
import 'package:intl/intl.dart';

class TrendingNewsWidget extends StatelessWidget {
  const TrendingNewsWidget({super.key, required this.item});

  final News item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 301,
      height: 305,
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: AppRadius.medium,
      ),
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //News Image with Category
          Stack(
            children: [
              ClipRRect(
                borderRadius: AppRadius.small,
                child: Image.network(
                  item.image,
                  height: 161,
                  width: 285,
                  fit: BoxFit.cover,
                  cacheHeight: 161,
                  cacheWidth: 285,
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.regularBoxCategoryColor,
                    borderRadius: AppRadius.small,
                  ),
                  child: Text(
                    item.category,
                    style: TextTheme.of(context).labelSmall,
                  ),
                ),
              ),
            ],
          ),

          //News Title
          Padding(
            padding: const EdgeInsets.only(
              left: 8,
              right: 8,
              top: 12,
            ),
            child: Text(
              item.title,
              softWrap: true,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),

          //Publisher and Date
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 8,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PublisherWidget(publisherId: item.publisherId, displayType: PublisherDisplayType.compact),
                      Text(
                        DateFormat('MMM d, yyyy').format(item.date),
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}