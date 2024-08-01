import 'package:flutter/material.dart';
import 'package:islami_app_flutter/home/Tabs/hadeth_tab/hadeth_tab.dart';
import 'package:islami_app_flutter/home/Tabs/hadeth_tab/hadith_details/hadith_content_widget.dart';
import 'package:islami_app_flutter/utils/image_path.dart';

class HadithDetailsScreen extends StatelessWidget {
  static const String routeName = '/HadithDetails';

  const HadithDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // casting
    var hadithItem = ModalRoute.of(context)?.settings.arguments as HadithItem;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(imagePathByName(imageName: 'background_light.png')),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(hadithItem.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                child: Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  elevation: 22,
                  child: HadithContentWidget(
                    content: hadithItem.content,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
