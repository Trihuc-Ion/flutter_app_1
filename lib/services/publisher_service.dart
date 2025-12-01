import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_app/models/publisher.dart';

class PublisherService {
  Future<List<Publisher>> fetchPublishers() async {
    final String jsonString = await rootBundle.loadString
      ('assets/data/publisher.json');
    final dynamic jsonData = jsonDecode(jsonString);

     return (jsonData['publisher'] as List)
      .map((publisherJson) => Publisher.fromJson(publisherJson))
      .toList();
  }
}