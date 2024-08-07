import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeBottom extends StatefulWidget {
  const ThemeBottom({super.key});

  @override
  State<ThemeBottom> createState() => _ThemeBottomState();
}

class _ThemeBottomState extends State<ThemeBottom> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildSelectedThemeItem(AppLocalizations.of(context)!.dark),
          SizedBox(
            height: 6,
          ),
          buildUnSelectedThemeItem(AppLocalizations.of(context)!.light),
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
