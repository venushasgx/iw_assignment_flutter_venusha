import 'package:flutter/material.dart';

//state for store user
class AuthModel extends ChangeNotifier {
  String _username = "";

  String get username => _username;

  void setUsername(String username) {
    _username = username;
    notifyListeners();
  }
}
