import 'package:flutter/material.dart';
import 'package:flutter_application_1/styles/app_styles.dart';
import 'package:flutter_application_1/widgets/custom_app_bar.dart';
import 'package:flutter_application_1/widgets/filter_widget.dart';
import 'package:flutter_application_1/widgets/publisher_profile.dart';
import 'package:flutter_application_1/widgets/recommendation_card.dart';
import 'package:flutter_application_1/widgets/search_bar.dart';

class PublisherPage extends StatelessWidget {
  const PublisherPage({super.key, required this.publisherName, required this.logoUrl});
  final String publisherName;
  final String logoUrl;
  @override
  Widget build(BuildContext context) {
    // final filtered = allPublisher.where((e) => e.author == publisherName).toList();
    return Scaffold(
      appBar: CustomAppBar(
        leadingIcon: Icons.menu,
        onLeadingPressed: () {},
        actionIcon: Icons.notifications_outlined,
        onActionPressed: () {},
        titleWidget: Text(publisherName),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: AppStyles.horizontalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PublisherProfile(publisher: publisherName, logoUrl: logoUrl),
            SizedBox(height: 32),
            NewsHeaderBar(),
            SizedBox(height: 24),
            SearchBarWidget(),
            RecommendationCard(publisherName: publisherName,),
          ],
        ),
      ),
    );
  }
}
