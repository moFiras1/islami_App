import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;
  String currentLanguage = 'en';

  void changeAppLanguage(String newLang) {
    if (newLang == currentLanguage) {
      return;
    }

    currentLanguage = newLang;
    notifyListeners();
  }

  void changeThemeMode(ThemeMode newTheme) {
    if (newTheme == ThemeMode) return;
    currentTheme = newTheme;
    notifyListeners();
  }
}
