import 'package:flutter/material.dart';

class Rcommandation extends StatelessWidget {
  final String title;
  final String author;
  final String category;
  final String imageUrl;
  final String logoUrl;
  final DateTime date;

  const Rcommandation({
    super.key, 
    required this.title, 
    required this.author, 
    required this.category, 
    required this.imageUrl, 
    required this.logoUrl, 
    required this.date
  });

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
