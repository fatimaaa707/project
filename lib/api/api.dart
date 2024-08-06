import 'dart:convert';

import 'package:flutter_application_4/models/user.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<List<User>> getUser() async {
    String url = "https://jsonplaceholder.typicode.com/users";

    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((json) => User.fromJson(json)).toList();
    } else {
      throw Exception('Faild to loud user');
    }
  }
}
