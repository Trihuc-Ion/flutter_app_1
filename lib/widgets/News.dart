import 'package:flutter/material.dart';
import 'package:flutter_application_1/styles/app_styles.dart';
import 'package:flutter_application_1/widgets/Publisher.dart';
import 'package:intl/intl.dart';

class News extends StatelessWidget {
  final String title;
  final String name;
  final String logoUrl;
  // final Widget publisher;
  final DateTime date;
  final String category;
  final String imageUrl;

  const News({
    super.key,
    required this.title,
    // required this.publisher,
    required this.date,
    required this.category,
    required this.imageUrl,
    required this.name,
    required this.logoUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 301,
      decoration: BoxDecoration(
        color: Color.fromARGB(249, 252, 254, 255),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(8),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  imageUrl,
                  height: 161,
                  width: 285,
                  fit: BoxFit.cover,
                  cacheHeight: 161,
                  cacheWidth: 285,
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(42, 186, 255, 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    category,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),

          //News Title
          Padding(
            padding: const EdgeInsets.only(
              left: AppStyles.cardBorderPadding,
              right: AppStyles.cardBorderPadding,
              top: 12,
            ),
            child: Text(
              title,
              softWrap: true,
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),

          //Publisher and Date
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: AppStyles.cardBorderPadding,
                vertical: AppStyles.cardBorderPadding,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Publisher(
                        name: name, 
                        logoUrl: logoUrl,
                        isVerified: true,
                      ),
                      Text(
                        DateFormat('MMM d, yyyy').format(date),
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
