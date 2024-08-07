import 'package:flutter/material.dart';
import 'package:islami_app_flutter/home/Tabs/hadeth_tab/hadeth_tab.dart';
import 'package:islami_app_flutter/home/Tabs/hadeth_tab/hadith_details/hadith_details_screen.dart';

class HadithTitleWidget extends StatelessWidget {
  HadithItem hadithItem;

  HadithTitleWidget({required this.hadithItem, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadithDetailsScreen.routeName,
            arguments: hadithItem);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 6),
        child: Text(
          hadithItem.title,
          textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium),
      ),
    );
  }
}
