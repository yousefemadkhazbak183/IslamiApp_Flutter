import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildSelectedLanguageItem(AppLocalizations.of(context)!.english),
          SizedBox(
            height: 6,
          ),
          buildUnSelectedLanguageItem(AppLocalizations.of(context)!.arabic),
        ],
      ),
    );
  }

  Widget buildSelectedLanguageItem(String selected) {
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

  Widget buildUnSelectedLanguageItem(String unSelected) {
    return Text(
      unSelected, style: Theme.of(context).textTheme.labelSmall);
  }
}
