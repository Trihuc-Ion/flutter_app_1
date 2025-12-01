import 'package:flutter/material.dart';
import 'package:flutter_app/models/enum/publisher_display_type.dart';
import 'package:flutter_app/models/news.dart';
import 'package:flutter_app/resources/app_colors.dart';
import 'package:flutter_app/resources/app_dimensions.dart';
import 'package:flutter_app/widgets/publisher_widget.dart';
class RecommandationWidget extends StatelessWidget{
  const RecommandationWidget({super.key, required this.item});

  final News item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 392,
      height: 404,
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: AppRadius.medium,
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PublisherWidget(publisherId: item.publisherId, displayType: PublisherDisplayType.header),
          Text(
            item.title,
            style: TextTheme.of(context).titleLarge,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: Color.fromRGBO(42, 186, 255, 1)),
            ),
            child: Text(
              item.category,
              style: TextTheme.of(context).labelMedium,
            ),
          ),
          ClipRRect(
            borderRadius: AppRadius.medium,
            child: Image.network(
              item.image,
              height: 198,
              width: 360,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}