import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/lab2_publisherPage.dart';
import 'package:flutter_application_1/styles/app_styles.dart';
import 'package:intl/intl.dart';

class PublisherHeader extends StatelessWidget {
  final String logoUrl;
  final String publisherName;
  final bool isVerified;
  final DateTime date;
  final VoidCallback? onFollowPressed;
  final VoidCallback? onMenuPressed;

  const PublisherHeader({
    super.key,
    required this.logoUrl,
    required this.publisherName,
    this.isVerified = true,
    required this.date,
    this.onFollowPressed,
    this.onMenuPressed, 
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.network(
              logoUrl,
              height: AppStyles.iconLarge,
              width: AppStyles.iconLarge,
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
                            builder: (context) =>
                                PublisherPage(publisherName: publisherName, logoUrl: logoUrl, ), // pagina către care navighezi
                          ),
                        );
                      },
                      child: 
                      Text(
                        publisherName,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),

                    if (isVerified)
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
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppStyles.color12131414,
                  elevation: 0,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 22,
                    vertical: 9,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
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
}
