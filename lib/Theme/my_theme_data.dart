import 'package:flutter/material.dart';

class MyThemeData {
  static const Color goldColor = Color(0xFFB7935F);
  static const Color darkColor = Color(0xFF141A2E);
  static const Color yellowColor = Color(0xFFFACC1D);

  /// Light mode, Dark mode, Colors.
  static final ThemeData lightMode = ThemeData(
    primaryColor: goldColor,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.w700,
      ),
      centerTitle: true,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFFB7935F),
        primary: const Color(0xFFB7935F),
        secondary: goldColor),
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
    cardTheme: CardTheme(
      color: Colors.white,
      elevation: 16,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        )),
    dividerColor: goldColor,
    textTheme: const TextTheme(
        labelMedium: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
        titleMedium: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        bodySmall: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        labelSmall: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        titleSmall: TextStyle(
            fontSize: 25, color: Colors.white, fontWeight: FontWeight.w500)),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: goldColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(33),
        ),
      ),
    ),
  );
}
