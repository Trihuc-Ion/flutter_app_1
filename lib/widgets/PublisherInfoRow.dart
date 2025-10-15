import 'package:flutter/material.dart';
import 'package:flutter_application_1/styles/app_styles.dart';

class Publisher extends StatelessWidget {
  final String name;
  final String logoUrl;
  final bool isVerified;
  final DateTime date;

  const Publisher({
    super.key,
    required this.name,
    required this.logoUrl,
    this.isVerified = false,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            logoUrl,
            height: AppStyles.iconSmall,
            width: AppStyles.iconSmall,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 8),
        Text(name, style: Theme.of(context).textTheme.bodyMedium),
        if (isVerified)
          Padding(
            padding: EdgeInsets.only(left: 4, top: 5, bottom: 3),
            child: Icon(Icons.verified, size: 13.33, color: Color(0xff2ABAFF)),
          ),
      ],
    );
  }
}
