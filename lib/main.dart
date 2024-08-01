
import 'package:flutter/material.dart';
import 'package:islami_app_flutter/Theme/my_theme_data.dart';
import 'package:islami_app_flutter/home/Tabs/hadeth_tab/hadith_details/hadith_details_screen.dart';
import 'package:islami_app_flutter/home/Tabs/quran_tabs/quran_details/quran_details.dart';
import 'package:islami_app_flutter/home/home.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyThemeData.lightMode,
      routes: {
        HomeScreen.rotueName: (context) => HomeScreen(),
        QuranDetails.routeName: (context) => QuranDetails(),
        HadithDetailsScreen.routeName: (context) => HadithDetailsScreen()
      },
    );
  }
}

void main(){
  runApp(MyApp());
}