import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeBottom extends StatelessWidget {
  const ThemeBottom({super.key});

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
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        Icon(
          Icons.check,
          size: 30,
        ),
      ],
    );
  }

  Widget buildUnSelectedThemeItem(String unSelected) {
    return Text(
      unSelected,
      style: TextStyle(
          fontWeight: FontWeight.w700, fontSize: 20, color: Colors.black),
    );
  }
}
