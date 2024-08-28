import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  Locale locale = const Locale('en');

  void changeTheme(ThemeMode theme) {
    themeMode = theme;
    saveTheme(theme);
    notifyListeners();
  }

  void saveTheme(ThemeMode themeMode) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (themeMode == ThemeMode.light) {
      await prefs.setString('theme', 'light');
    } else {
      await prefs.setString('theme', 'dark');
    }
  }

  void changeLocal(String language) {
    locale = Locale(language);
    saveLocal(language);
    notifyListeners();
  }

  void saveLocal(String language) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('language', language);
  }

  void getTheme() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String theme = prefs.getString('theme') ?? "light";
    if (theme == "light") {
      themeMode = ThemeMode.light;
    } else {
      themeMode = ThemeMode.dark;
    }
    notifyListeners();
  }

  void getLanguage() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String language = prefs.getString('language') ?? "en";
    locale = Locale(language);
    notifyListeners();
  }

  String getBackgroundImageName() {
    return themeMode == ThemeMode.light
        ? 'background_light.png'
        : 'home_dark_background.png';
  }
}
