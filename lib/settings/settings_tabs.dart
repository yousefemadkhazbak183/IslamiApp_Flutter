import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app_flutter/settings/language_bottom_sheet.dart';
import 'package:islami_app_flutter/settings/theme_bottom.dart';

class SettingsTabs extends StatefulWidget {
  @override
  State<SettingsTabs> createState() => _SettingsTabsState();
}

class _SettingsTabsState extends State<SettingsTabs> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.labelSmall,
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet();
            },
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 6),
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                border:
                    Border.all(color: Theme.of(context).dividerColor, width: 3),
              ),
                child: Text(
                  AppLocalizations.of(context)!.light,
                  style: Theme.of(context).textTheme.labelSmall),
            ),
          ),
          Text(
            AppLocalizations.of(context)!.language,
              style: Theme.of(context).textTheme.labelSmall),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 6),
                margin: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                      color: Theme.of(context).dividerColor, width: 3),
                ),
                child: Text(
                  AppLocalizations.of(context)!.english,
                    style: Theme.of(context).textTheme.labelSmall)),
          ),
        ],
      ),
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
        context: context, builder: (context) => LanguageBottomSheet());
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(context: context, builder: (context) => ThemeBottom());
  }
}
