import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_flutter/home/Tabs/quran_tabs/quran_details/verse_widget.dart';
import 'package:islami_app_flutter/home/Tabs/quran_tabs/sura_title_widget.dart';
import 'package:islami_app_flutter/utils/image_path.dart';

class QuranDetails extends StatefulWidget {
  static const String routeName = '/QuranDetails';

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    ArgumentSura argumentSura =
        ModalRoute.of(context)?.settings.arguments as ArgumentSura;
    if (verses.isEmpty) loadFile(argumentSura.index);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(imagePathByName(imageName: 'background_light.png')),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Text(argumentSura.titleSura),
        ),
        body: verses.isEmpty
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Card(
                color: Colors.white,
                elevation: 6,
                margin: EdgeInsets.symmetric(vertical: 55, horizontal: 29),
                child: ListView.separated(
                    itemBuilder: (context, index) =>
                        VerseWidget(verse: verses[index]),
                    separatorBuilder: (context, index) => Divider(
                          color: Color(0xFFB7935F),
                          indent: 22,
                          endIndent: 22,
                        ),
                    itemCount: verses.length),
              ),
      ),
    );
  }

  void loadFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> suraLine = fileContent.split('\n');
    verses = suraLine;
    setState(() {});
  }
}