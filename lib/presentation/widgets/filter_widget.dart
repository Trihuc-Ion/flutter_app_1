import 'package:flutter/material.dart';
import 'package:flutter_app/resources/app_colors.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const String currentSortValue = "Newest";

    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'News by Forbes',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ],
          ),

          const SizedBox(height: 8),

          Row(
            children: [
              Text(
                'Sort by: ',
                style: Theme.of(context).textTheme.displayLarge,
              ),

              GestureDetector(
                onTap: () {
                  print('Sort button pressed!');
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      currentSortValue,
                      style: TextTheme.of(context).displayLarge?.copyWith(
                        color: AppColors.regularTitleColor,
                      ),
                    ),
                    const Icon(
                      Icons.keyboard_arrow_down,
                      size: 20,
                      color: Colors.black54,
                    ),
                  ],
                ),
              ),

              const Spacer(),

              Row(
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.verifyColor, width: 1.5),
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Icon(
                      Icons.check_box_outline_blank,
                      size: 18,
                      color: AppColors.verifyColor,
                    ),
                  ),

                  const SizedBox(width: 8),

                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.regularTitleColor, width: 1.0),
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Icon(
                      Icons.view_list,
                      size: 18,
                      color: AppColors.regularTitleColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
