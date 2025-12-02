import 'dart:convert';

import 'package:flutter_app/models/user.dart';
import 'package:http/http.dart' as http;

class UserService {

  final baseUrl = 'https://api-flutter-app.onrender.com/v4/feed';

  Future<Map<String, dynamic>> getCurrentUserData() async {
    final Uri url = Uri.parse(baseUrl); 
    final http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      final dynamic jsonData = jsonDecode(response.body);
      return jsonData;
    }else {
      throw Exception('Failed to load profile: ${response.statusCode}');
    }
  }

  Future<User> getCurrentUser() async {
    final data = await getCurrentUserData();
    
    return User.fromJson(data['user']); 
  }
}