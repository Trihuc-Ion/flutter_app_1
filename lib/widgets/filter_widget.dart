import 'package:flutter/material.dart';

// --- NewsHeaderBar Widget ---
class NewsHeaderBar extends StatelessWidget {
  const NewsHeaderBar({super.key});

  @override
  Widget build(BuildContext context) {
    const TextStyle sortTextStyle = TextStyle(
      fontSize: 18,
      color: Colors.grey, 
    );
    
    const String currentSortValue = "Newest"; 

    return Padding(
      padding: const EdgeInsets.only(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'News by Forbes',
                style: Theme.of(context).textTheme.displayMedium,
              ),

              Row(
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 1.5),
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: const Icon(
                      Icons.check_box_outline_blank, 
                      size: 18,
                      color: Colors.blue,
                    ),
                  ),
                  
                  const SizedBox(width: 8),

                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1.0),
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: const Icon(
                      Icons.view_list, 
                      size: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 8), 

          Row(
            children: [
              const Text(
                'Sort by: ',
                style: sortTextStyle,
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
                      style: sortTextStyle.copyWith(fontWeight: FontWeight.bold, color: Colors.black87),
                    ),
                    const Icon(
                      Icons.keyboard_arrow_down,
                      size: 20,
                      color: Colors.black54,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
