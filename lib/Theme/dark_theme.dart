import 'package:flutter/material.dart';

class DarkTheme {
  static const Color goldColor = Color(0xFFB7935F);
  static const Color darkColor = Color(0xFF141A2E);
  static const Color yellowColor = Color(0xFFFACC1D);

  static final ThemeData darkMode = ThemeData(
      primaryColor: darkColor,
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.w700,
        ),
        centerTitle: true,
      ),
      cardTheme: CardTheme(
        color: darkColor,
        elevation: 16,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: darkColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          )),
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme.fromSeed(
          seedColor: darkColor, primary: yellowColor, secondary: darkColor),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: yellowColor,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(
          size: 30,
        ),
        unselectedIconTheme: IconThemeData(
          size: 22,
        ),
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
      dividerColor: goldColor,
      textTheme: const TextTheme(
          labelMedium: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
          titleMedium: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          bodySmall: TextStyle(
            fontSize: 20,
            color: yellowColor,
          ),
          labelSmall: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
          titleSmall: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 25, color: Colors.black)),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: yellowColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(33)))));
}
