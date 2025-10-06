import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/custom_app_bar.dart';
import 'package:flutter_application_1/widgets/recommendation_card.dart';
import 'package:flutter_application_1/widgets/trending_news_card.dart';
import 'package:flutter_application_1/widgets/welcome_header.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leadingIcon: Icons.menu,
        onLeadingPressed: () {},
        actionIcon: Icons.notifications_outlined,
        onActionPressed: () {},
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WelcomeHeader(userName: "Andrei"),
          TrendingNews(),
          RecommendationCard(),
        ],
      ),
    );
  }
}
