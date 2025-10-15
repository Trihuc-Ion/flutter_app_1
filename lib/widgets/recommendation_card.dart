import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/publisher_data.dart';
import 'package:flutter_application_1/widgets/recommendation_header.dart';

class RecommendationCard extends StatelessWidget {
  final String? publisherName;
  final recommendations = allPublisher;

  RecommendationCard({super.key, this.publisherName});

  @override
  Widget build(BuildContext context) {
    final filtered = publisherName == null
        ? recommendations
        : recommendations
            .where((item) => item.author == publisherName)
            .toList();
    return Padding(
      padding: const EdgeInsets.only(top: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(publisherName == null)
            RecommendationHeader(),
          ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 16),
            physics: NeverScrollableScrollPhysics(),
            itemCount: filtered.length,
            separatorBuilder: (_, __) => SizedBox(height: 20),
            itemBuilder: (context, index) => filtered[index],
          ),
        ],
      ),
    );
  }
}
