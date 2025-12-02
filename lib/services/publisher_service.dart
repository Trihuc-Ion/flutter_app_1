import 'dart:convert';

import 'package:flutter_app/models/publisher.dart';
import 'package:http/http.dart' as http;

class PublisherService {

  final baseUrl = 'https://api-flutter-app.onrender.com/v4/feed';

  Future<Map<String, dynamic>> fetchPublishersData() async {
    final Uri url = Uri.parse(baseUrl); 
    final http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      final dynamic jsonData = jsonDecode(response.body);
      return jsonData;
    }else {
      throw Exception('Failed to load profile: ${response.statusCode}');
    }
  }

  Future<List<Publisher>> fetchPublishers() async {
    final data = await fetchPublishersData();

     return (data['publisher'] as List)
      .map((publisherJson) => Publisher.fromJson(publisherJson))
      .toList();
  }
}