import 'package:flutter/material.dart';
import 'package:food/themes/dark_mode.dart';
import 'package:food/themes/light_mode.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = LightMode;

  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData == DarkMode;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == LightMode) {
      themeData = DarkMode;
    } else {
      themeData = LightMode;
    }
  }
}
