import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_app/models/news.dart';

class NewsService {

  Future<Map<String, dynamic>> fetchNewsData() async {
    final String jsonString = await rootBundle.loadString('assets/data/news.json');
    final dynamic jsonData = jsonDecode(jsonString);
    return jsonData;
  }

  Future<List<News>> fetchNews() async {
    final data = await fetchNewsData();

     return (data['news'] as List)
      .map((newsJson) => News.fromJson(newsJson))
      .toList();
  }

  Future<Map<String, dynamic>> fetchFilters() async {
    final data = await fetchNewsData();
    return data['filters'];
  }
}