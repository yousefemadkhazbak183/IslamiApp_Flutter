import 'package:flutter/material.dart';
import 'package:islami_app_flutter/home/Tabs/quran_tabs/quran_details/quran_details.dart';

class SuraTitleWidget extends StatelessWidget {
  String suraTitle;
  String numberOfSura;
  int index;

  SuraTitleWidget(
      {required this.suraTitle,
      required this.numberOfSura,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          QuranDetails.routeName,
          arguments: ArgumentSura(titleSura: suraTitle, index: index),
        );
      },
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
                child: Text(
              suraTitle,
              textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium),
            ),
            Container(
              width: 2, color: Theme.of(context).dividerColor),
            Expanded(
                child: Text(
              numberOfSura,
              textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleMedium)),
          ],
        ),
      ),
    );
  }
}

class ArgumentSura {
  String titleSura;
  int index;

  ArgumentSura({required this.titleSura, required this.index});
}
