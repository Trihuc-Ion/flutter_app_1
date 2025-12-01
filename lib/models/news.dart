import 'package:flutter_app/models/news_stats.dart';

class News {
  final int id;
  final int publisherId;
  final String title;
  final String category;
  final DateTime date;
  final String image;
  final NewsStats stats;
  final bool isBookmarked;
  final bool isTrending;

  News({
    required this.id,
    required this.publisherId,
    required this.category,
    required this.image,
    required this.date,
    required this.title,
    required this.stats,
    required this.isBookmarked,
    required this.isTrending,
  });

  factory News.fromJson(Map<String, dynamic> json) {

    var statsJson = json['stats'];

    NewsStats newsStats = NewsStats.fromJson(statsJson);

    return News(
      id: json['id'],
      title: json['title'],
      category: json['category'],
      date: DateTime.parse(json['date']),
      image: json['image'],
      isBookmarked: json['is_bookmarked'] ?? false,
      isTrending: json['is_trending'] ?? false,
      publisherId: json['publisher_id'],
      stats: newsStats,
    );
  }
}
