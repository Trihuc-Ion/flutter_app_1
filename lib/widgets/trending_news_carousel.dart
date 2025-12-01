// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/controllers/news_controller.dart';
import 'package:flutter_app/widgets/section_header_widget.dart';
import 'package:flutter_app/widgets/trending_news_widget.dart';
import 'package:get/get.dart';

class TrendingNewsCarousel extends StatelessWidget {
  TrendingNewsCarousel({super.key});

  final NewsController newsController = Get.put(NewsController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (newsController.isLoading.value) {
        return Center(child: CircularProgressIndicator());
      }

      final trendingNews = newsController.newsList
          .where((item) => item.isTrending == true)
          .toList();

      if (trendingNews.isEmpty) {
        return Center(child: Text('No trending news available'));
      }

      //sa pun ca in scrol sa fie un numar anumit si daca apas pe see all
      //sa vad toate
      return Padding(
        padding: EdgeInsets.only(top: 24),
        child: SizedBox(
          height: 344,
          child: Column(
            children: [
              SectionHeaderWidget(title: "Trending News", seeAllTap: true),

              Expanded(
                child: ListView.separated(
                  padding: EdgeInsets.only(top: 16),
                  itemCount: trendingNews.length,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => SizedBox(width: 16),
                  itemBuilder: (context, index) {
                    final newsItem = trendingNews[index];
                    return TrendingNewsWidget(item: newsItem);
                  },
                ),
              ),
            ],
          ),
        ),
      );
      // return CarouselSlider.builder(
      //   itemCount: newsController.newsList.length,
      //   itemBuilder: (context, index, realIndex) {
      //     final news = newsController.newsList[index];
      //     return TrendingNewsWidget(item: news);
      //   },
      //   options: CarouselOptions(
      //     height: 344,
      //     enlargeCenterPage: true,
      //     autoPlay: true,
      //     autoPlayInterval: Duration(seconds: 3),
      //     viewportFraction: 0.85,
      //   ),
      // );
    });
  }
}
