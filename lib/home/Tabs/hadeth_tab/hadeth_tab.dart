import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_flutter/home/Tabs/hadeth_tab/hadith_title_widget.dart';
import 'package:islami_app_flutter/utils/image_path.dart';

class HadethTab extends StatefulWidget {
  const HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<HadithItem> hadithList = [];

  @override
  Widget build(BuildContext context) {
    if (hadithList.isEmpty) loadHadithFile();
    return Container(
      child: hadithList.isEmpty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              children: [
                Expanded(
                    flex: 1,
                    child: Image.asset(
                        imagePathByName(imageName: 'hadith_header.png'))),
                Expanded(
                  flex: 2,
                  child: ListView.separated(
                    itemBuilder: (context, index) =>
                        HadithTitleWidget(hadithTitle: hadithList[index].title),
                    separatorBuilder: (context, index) => Container(
                      width: double.infinity,
                      height: 3,
                      margin: EdgeInsets.symmetric(horizontal: 26),
                      color: Color(0xFFB7935F),
                    ),
                    itemCount: hadithList.length,
                  ),
                ),
              ],
            ),
    );
  }

  void loadHadithFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    var allHadith = fileContent.split('#');

    for (int i = 0; i < allHadith.length; i++) {
      var hadithLines = allHadith[i].trim().split('\n');

      String hadithTitle = hadithLines[0];
      hadithLines.remove(0);
      String hadithContent = hadithLines.join('\n');

      HadithItem hadithItem =
          HadithItem(title: hadithTitle, content: hadithContent);
      hadithList.add(hadithItem);
      setState(() {});
    }
  }
}

// Data class.
class HadithItem {
  String title;
  String content;

  HadithItem({required this.title, required this.content});
}
