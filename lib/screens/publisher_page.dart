import 'package:flutter/material.dart';
import 'package:flutter_app/models/enum/publisher_display_type.dart';
import 'package:flutter_app/models/publisher.dart';
import 'package:flutter_app/widgets/custom_app_bar.dart';
import 'package:flutter_app/widgets/filter_widget.dart';
import 'package:flutter_app/widgets/publisher_widget.dart';
import 'package:flutter_app/widgets/recommandation_carousel.dart';
import 'package:flutter_app/widgets/search_bar_widget.dart';

class PublisherPage extends StatelessWidget {
  const PublisherPage({
    super.key,
    required this.publisher,
    required this.publisherId,
  });

  final Publisher publisher;
  final int publisherId;

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
        username: publisher.userName,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PublisherWidget(
              publisherId: publisherId,
              displayType: PublisherDisplayType.profile,
            ),
            FilterWidget(),
            SizedBox(height: 24),
            SearchBarWidget(),
            RecommendationCarousel(publisherId: publisherId),
          ],
        ),
      ),
    );
  }
}
