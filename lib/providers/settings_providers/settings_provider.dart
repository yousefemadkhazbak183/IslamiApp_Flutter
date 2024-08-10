import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;
  String currentLanguage = 'en';

  void changeLanguage(String newLanguage) {
    if (currentLanguage == newLanguage) return;
    currentLanguage = newLanguage;
    notifyListeners();
  }

  void changeThemeMode(ThemeMode changeTheme) {
    if (currentTheme == changeTheme) return;
    currentTheme = changeTheme;
    notifyListeners();
  }

  String getBackgroundImageName() {
    return currentTheme == ThemeMode.light
        ? 'background_light.png'
        : 'home_dark_background.png';
  }
}
