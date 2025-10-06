import 'package:flutter/material.dart';
import 'package:flutter_application_1/styles/app_styles.dart';
import 'package:flutter_application_1/widgets/News.dart';
import 'package:flutter_application_1/widgets/trending_news_header.dart';

class TrendingNews extends StatelessWidget {
  TrendingNews({super.key});
  final news = [
    SizedBox(width: 2),
    News(
      date: DateTime.now(),
      name: "BBC News",
      logoUrl: 'assets/images/bbc_news.png',
      title: "Global Summit on Climate Change: Historic Agreement Reached",
      category: "Environment",
      imageUrl: "assets/images/environment.jpg",
    ),
    News(
      name: "The NYT",
      logoUrl: 'assets/images/the_nyt.png',
      date: DateTime.now(),
      title: "Tech Giant Unveils Revolutionary AI-powered Device",
      category: "Technology",
      imageUrl: "assets/images/technology.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: AppStyles.verticalPadding, left: AppStyles.horizontalPadding),
      child: SizedBox(
        height: 344,
        child: Column(
          children: [
            TrendingNewsHeader(),
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.only(top: 16),
                scrollDirection: Axis.horizontal,
                itemCount: news.length,
                separatorBuilder: (_, __) => const SizedBox(width: 16),
                itemBuilder: (context, index) => news[index],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
