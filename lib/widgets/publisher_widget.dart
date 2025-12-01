import 'package:flutter/material.dart';
import 'package:flutter_app/controllers/publisher_controller.dart';
import 'package:flutter_app/models/enum/publisher_display_type.dart';
import 'package:flutter_app/models/publisher.dart';
import 'package:flutter_app/resources/app_colors.dart';
import 'package:flutter_app/resources/app_dimensions.dart';
import 'package:flutter_app/resources/app_icons.dart';
import 'package:flutter_app/screens/publisher_page.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class PublisherWidget extends StatelessWidget {
  PublisherWidget({
    super.key,
    required this.publisherId,
    required this.displayType,
    DateTime? date,
  }) : date = date ?? DateTime.now();

  final int publisherId;
  final DateTime date;
  final PublisherDisplayType displayType;
  final publisherController = Get.put(PublisherController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final publisher = publisherController.getPublisherById(publisherId);

      if (publisher == null) {
        return Center(child: Text("Publisher not found"));
      }

      switch (displayType) {
        case PublisherDisplayType.compact:
          return _buildCompact(context, publisher);
        case PublisherDisplayType.header:
          return _buildHeader(context, publisher);
        case PublisherDisplayType.profile:
          // Implement full display type if needed
          return _buildProfile(context, publisher);
      }
    });
  }

  Widget _buildCompact(BuildContext context, Publisher publisher) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: AppRadius.small,
          child: Image.network(
            publisher.logo,
            height: AppIcons.iconSmall,
            width: AppIcons.iconSmall,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 8),
        Text(publisher.name, style: Theme.of(context).textTheme.displayMedium),
        if (publisher.isVerified)
          Padding(
            padding: EdgeInsets.only(left: 4, top: 5, bottom: 3),
            child: Icon(Icons.verified, size: 13.33, color: Color(0xff2ABAFF)),
          ),
      ],
    );
  }

  Widget _buildHeader(BuildContext context, Publisher publisher) {
    return SizedBox(
      height: 43,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: AppRadius.small,
            child: Image.network(
              publisher.logo,
              height: AppIcons.iconLarge,
              width: AppIcons.iconLarge,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //PublisherName + verified
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero, // elimină padding-ul implicit
                        minimumSize: Size(0, 0), // elimină dimensiunea minimă
                        tapTargetSize: MaterialTapTargetSize
                            .shrinkWrap, // micșorează zona de tap
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PublisherPage(
                              publisher: publisher,
                              publisherId: publisherId,
                            ), // pagina către care navighezi
                          ),
                        );
                      },
                      child: Text(
                        publisher.name,
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                    ),

                    if (publisher.isVerified)
                      Padding(
                        padding: EdgeInsets.only(
                          left: 5.5,
                          top: 5.5,
                          bottom: 2.5,
                        ),
                        child: Icon(
                          Icons.verified,
                          size: 15,
                          color: Color(0xff2ABAFF),
                        ),
                      ),
                  ],
                ),
                Text(
                  DateFormat('MMM d, yyyy').format(date),
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ],
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.followColor,
                  elevation: 0,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 22,
                    vertical: 9,
                  ),
                  shape: RoundedRectangleBorder(borderRadius: AppRadius.small),
                ),
                child: const Text(
                  "Follow",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(width: 14),
              const Icon(Icons.more_vert, size: 24),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProfile(BuildContext context, Publisher publisher) {
    return Container(
      padding: EdgeInsets.only(top: 24),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: AppRadius.small,
                child: Image.network(
                  publisher.logo,
                  height: 108,
                  width: 108,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 108,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              '${publisher.stats.newsCount}',
                              style: TextTheme.of(context).headlineSmall?.copyWith(fontWeight: FontWeight.w700),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'News',
                              style: TextTheme.of(context).displayMedium,
                            ),
                          ],
                        ),
                        SizedBox(width: 35),
                        Column(
                          children: [
                            Text(
                              '${publisher.stats.followers}',
                              style: TextTheme.of(context).headlineSmall?.copyWith(fontWeight: FontWeight.w700),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Followers',
                              style: TextTheme.of(context).displayMedium,
                            ),
                          ],
                        ),
                        SizedBox(width: 35),
                        Column(
                          children: [
                            Text(
                              '${publisher.stats.following}',
                              style: TextTheme.of(context).headlineSmall?.copyWith(fontWeight: FontWeight.w700),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Following',
                              style: TextTheme.of(context).displayMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                    // SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.cardIconColor,
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 94.5,
                          vertical: 11,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        "Follow",
                        // selectionColor: Colors.white,
                        style: TextTheme.of(
                          context,
                        ).labelLarge?.copyWith(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 32),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero, // elimină padding-ul implicit
                        minimumSize: Size(0, 0), // elimină dimensiunea minimă
                        tapTargetSize: MaterialTapTargetSize
                            .shrinkWrap, // micșorează zona de tap
                      ),
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => PublisherPage(
                        //       publisherName: publisher,
                        //       logoUrl: logoUrl,
                        //     ), // pagina către care navighezi
                        //   ),
                        // );
                      },
                      child: Text(
                        publisher.name,
                        style: TextTheme.of(context).headlineMedium,
                      ),
                    ),

                    if (publisher.isVerified)
                      Padding(
                        padding: EdgeInsets.only(
                          left: 7.67,
                          top: 6.5,
                          bottom: 4.83,
                        ),
                        child: Icon(
                          Icons.verified,
                          size: 16.67,
                          color: AppColors.regularBoxCategoryColor,
                        ),
                      ),
                  ],
                ),
                SizedBox(height: 8),
                Text(publisher.bio, style: TextTheme.of(context).bodyMedium),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
