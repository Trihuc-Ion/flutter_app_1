import 'package:flutter/material.dart';
import 'package:flutter_app/presentation/widgets/custom_app_bar.dart';
import 'package:flutter_app/presentation/widgets/recommandation_carousel.dart';
import 'package:flutter_app/presentation/widgets/trending_news_carousel.dart';
import 'package:flutter_app/presentation/widgets/welcome_header_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onMenuPressed: () {
          print('Menu pressed');
        },
        onNotificationPressed: () {
          print('Notification pressed');
        },
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WelcomeHeaderWidget(),
            TrendingNewsCarousel(),
            SizedBox(height: 8),
            RecommendationCarousel(),
          ],
        ),
      ),
    );
  }
}
