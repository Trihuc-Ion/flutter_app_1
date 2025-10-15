import 'package:flutter/material.dart';
import 'package:flutter_application_1/styles/app_styles.dart';
import 'package:flutter_application_1/widgets/PublisherHeader.dart';

class Recommendation extends StatelessWidget {
  final String title;
  final String author;
  final String category;
  final String imageUrl;
  final String logoUrl;
  final DateTime date;

  const Recommendation({
    super.key,
    required this.title,
    required this.author,
    required this.category,
    required this.imageUrl,
    required this.logoUrl,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 392,
      height: 404,
      decoration: BoxDecoration(
        color: AppStyles.cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PublisherHeader(logoUrl: logoUrl, publisherName: author, date: date),
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 20,
              height: 28 / 20,
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(26, 26, 26, 1),
              letterSpacing: 0,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: Color.fromRGBO(42, 186, 255, 1)),
            ),
            child: Text(
              category,
              style: const TextStyle(
                fontFamily: 'SourceSans3',
                color: Color.fromRGBO(42, 186, 255, 1),
                fontSize: 14,
                fontWeight: FontWeight.w600,
                letterSpacing: 0
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              imageUrl,
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
