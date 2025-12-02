import 'dart:convert';

import 'package:flutter_app/models/news.dart';
import 'package:http/http.dart' as http;

class NewsService {
  final baseUrl = 'https://api-flutter-app.onrender.com/v4/feed';

  Future<Map<String, dynamic>> fetchNewsData() async {
    final Uri url = Uri.parse(baseUrl); 
    final http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      final dynamic jsonData = jsonDecode(response.body);
      return jsonData;
    }else {
      throw Exception('Failed to load profile: ${response.statusCode}');
    }
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
