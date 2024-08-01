import 'package:flutter/material.dart';

class HadithTitleWidget extends StatelessWidget {
  String hadithTitle;

  HadithTitleWidget({required this.hadithTitle, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6),
      child: Text(
        hadithTitle,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: Color(0xFF242424)),
      ),
    );
  }
}
