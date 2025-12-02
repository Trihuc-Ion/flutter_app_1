import 'package:flutter/material.dart';
import 'package:flutter_app/presentation/controllers/news_controller.dart';
import 'package:flutter_app/presentation/widgets/recommandation_widget.dart';
import 'package:flutter_app/presentation/widgets/section_header_widget.dart';
import 'package:get/get.dart';

class RecommendationCarousel extends StatelessWidget {
  RecommendationCarousel({super.key, this.publisherId});

  final int? publisherId;

  final NewsController newsController = Get.put(NewsController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final news = publisherId != null
          ? newsController.getNewsByPublisherId(publisherId!)
          : newsController.newsList;

      return Padding(
        padding: const EdgeInsets.only(top: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (publisherId == null)
              SectionHeaderWidget(title: "Recommendations"),
            ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemCount: news.length,
              separatorBuilder: (_, __) => SizedBox(height: 20),
              itemBuilder: (context, index) {
                final newsItem = news[index];
                return RecommandationWidget(item: newsItem);
              },
            ),
          ],
        ),
      );
    });
  }
}
