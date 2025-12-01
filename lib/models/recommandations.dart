import 'package:flutter_app/models/news.dart';
import 'package:flutter_app/models/publisher.dart';

class Recommandations {
  final int id;
  final Publisher publisher;
  final DateTime date;
  final News news;

  Recommandations({
    required this.id, 
    required this.publisher, 
    required this.date, 
    required this.news
  });
}
