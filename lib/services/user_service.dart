import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_app/models/user.dart';

class UserService {

  Future<User> getCurrentUser() async {
    final String jsonString = await rootBundle.loadString
      ('assets/data/user.json');
    final dynamic jsonData = jsonDecode(jsonString);
    
    return User.fromJson(jsonData['user']); 
  }
}