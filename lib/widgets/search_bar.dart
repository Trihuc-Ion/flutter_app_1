import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key,});

  // final SearchBarListItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffD9EFF9).withOpacity(0.3),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16),
      height: 48,
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/search.svg'),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text('Search "News"', style: TextTheme.of(context).bodyLarge),
            ),
          ),
        ],
      ),
    );
  }
}