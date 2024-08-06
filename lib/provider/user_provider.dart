import 'package:flutter/material.dart';

import '../api/api.dart';
import '../models/user.dart';

class UserProvider extends ChangeNotifier {
  List<User> users = [];
  bool isLoading = false;
  String? errorMessage;

  Api _api = Api();

  Future<void> fetchUsers() async {
    isLoading = true;
    errorMessage = null;
    notifyListeners();

    try {
      users = await _api.getUser();
    } catch (e) {
      errorMessage = e.toString();
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
// const Color.fromARGB(255, 183, 211, 223),