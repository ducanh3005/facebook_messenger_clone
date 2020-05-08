import 'package:flutter/material.dart';

class AppStateNotifier extends ChangeNotifier {
  bool isDarkModeOn = true;

  void updateDarkTheme(bool isDarkTheme) {
    this.isDarkModeOn = isDarkTheme;
    notifyListeners();
  }
}
