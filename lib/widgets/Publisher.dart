import 'package:flutter/material.dart';
import 'package:flutter_application_1/styles/app_styles.dart';
import 'package:flutter_svg/svg.dart';

class Publisher extends StatelessWidget {
  final String name;
  final String logoUrl;
  final bool isVerified;

  const Publisher({
    super.key,
    required this.name,
    required this.logoUrl,
    this.isVerified = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
            child: SvgPicture.asset(
              'assets/icons/verify.svg',
              height: 13.33,
              width: 13.33,
              fit: BoxFit.cover,
            ),
          ),
      ],
    );
  }
}
