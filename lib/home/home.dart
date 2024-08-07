
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app_flutter/home/Tabs/hadeth_tab/hadeth_tab.dart';
import 'package:islami_app_flutter/home/Tabs/quran_tabs/quran_tab.dart';
import 'package:islami_app_flutter/home/Tabs/radio_tabs/radio_tab.dart';
import 'package:islami_app_flutter/home/Tabs/sebha_tabs/sebha_tab.dart';
import 'package:islami_app_flutter/settings/settings_tabs.dart';
import 'package:islami_app_flutter/utils/image_path.dart';

class HomeScreen extends StatefulWidget {
  static const String rotueName = '/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int isSelectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(imagePathByName(imageName: 'background_light.png')),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.app_title,
          ),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Theme.of(context).colorScheme.primary,
          ),
          child: BottomNavigationBar(
            currentIndex: isSelectIndex,
            onTap: (index) {
              isSelectIndex = index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                      AssetImage(imagePathByName(imageName: 'quran_icon.png'))),
                  label: AppLocalizations.of(context)!.quran),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(
                      imagePathByName(imageName: 'hadeth_icon.png'))),
                  label: AppLocalizations.of(context)!.hadith),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                      AssetImage(imagePathByName(imageName: 'sebha_icon.png'))),
                  label: AppLocalizations.of(context)!.sebha),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                      AssetImage(imagePathByName(imageName: 'radio_icon.png'))),
                  label: AppLocalizations.of(context)!.radio),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: AppLocalizations.of(context)!.settings),
            ],
          ),
        ),
        body: tabs[isSelectIndex],
      ),
    );
  }

  var tabs = [QuranTab(), HadethTab(), SebhaTab(), RadioTab(), SettingsTabs()];
}
