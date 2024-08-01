import 'package:flutter/material.dart';

class HadithContentWidget extends StatelessWidget {
  String content;

  HadithContentWidget({required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 18),
      child: SingleChildScrollView(
        child: Text(
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
          content,
          style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w400,
              color: Color(0xFF242424)),
        ),
      ),
    );
  }
}
