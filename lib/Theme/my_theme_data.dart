import 'package:flutter/material.dart';

class MyThemeData {
  /// Light mode, Dark mode, Colors.
  static final ThemeData lightMode = ThemeData(
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.w700,
      ),
      centerTitle: true,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    colorScheme: ColorScheme.fromSeed(
        seedColor: Color(0xFFB7935F), primary: Color(0xFFB7935F)),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(
        size: 30,
      ),
      unselectedIconTheme: IconThemeData(
        size: 22,
      ),
      showSelectedLabels: true,
      showUnselectedLabels: false,
    ),
  );
}
