
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app_flutter/Theme/dark_theme.dart';
import 'package:islami_app_flutter/Theme/my_theme_data.dart';
import 'package:islami_app_flutter/home/Tabs/hadeth_tab/hadith_details/hadith_details_screen.dart';
import 'package:islami_app_flutter/home/Tabs/quran_tabs/quran_details/quran_details.dart';
import 'package:islami_app_flutter/home/home.dart';
import 'package:islami_app_flutter/providers/settings_providers/settings_provider.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      locale: Locale(provider.currentLanguage),
      theme: MyThemeData.lightMode,
      darkTheme: DarkTheme.darkMode,
      themeMode: provider.currentTheme,
      routes: {
        HomeScreen.rotueName: (context) => HomeScreen(),
        QuranDetails.routeName: (context) => QuranDetails(),
        HadithDetailsScreen.routeName: (context) => HadithDetailsScreen(),
      },
    );
  }
}

void main(){
  runApp(ChangeNotifierProvider(
      create: (context) => SettingsProvider(), child: MyApp()));
}