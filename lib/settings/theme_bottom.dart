import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app_flutter/providers/settings_providers/settings_provider.dart';
import 'package:provider/provider.dart';

class ThemeBottom extends StatefulWidget {
  const ThemeBottom({super.key});

  @override
  State<ThemeBottom> createState() => _ThemeBottomState();
}

class _ThemeBottomState extends State<ThemeBottom> {
  @override
  Widget build(BuildContext context) {
    SettingsProvider myProvider = Provider.of<SettingsProvider>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
              onTap: () {
                myProvider.changeTheme(ThemeMode.light);
              },
              child: myProvider.themeMode == ThemeMode.light
                  ? buildSelectedThemeItem(AppLocalizations.of(context)!.light)
                  : buildUnSelectedThemeItem(
                      AppLocalizations.of(context)!.light)),
          const SizedBox(
            height: 6,
          ),
          InkWell(
              onTap: () {
                myProvider.changeTheme(ThemeMode.dark);
              },
              child: myProvider.themeMode == ThemeMode.dark
                  ? buildSelectedThemeItem(AppLocalizations.of(context)!.dark)
                  : buildUnSelectedThemeItem(
                      AppLocalizations.of(context)!.dark)),
        ],
      ),
    );
  }

  Widget buildSelectedThemeItem(String selected) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          selected,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Theme.of(context).colorScheme.primary),
        ),
        Icon(
          color: Theme.of(context).colorScheme.primary,
          Icons.check,
          size: 30,
        ),
      ],
    );
  }

  Widget buildUnSelectedThemeItem(String unSelected) {
    return Text(
      unSelected, style: Theme.of(context).textTheme.labelSmall);
  }
}
