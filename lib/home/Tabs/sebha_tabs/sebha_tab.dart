import 'package:flutter/material.dart';
import 'package:islami_app_flutter/providers/settings_providers/settings_provider.dart';
import 'package:islami_app_flutter/utils/image_path.dart';
import 'package:provider/provider.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int count = 0;
  int index = 0;
  double turn = 0;

  static const List<String> azkar = ['سبحان الله', 'الحمد لله', 'الله اكبر'];
  @override
  Widget build(BuildContext context) {
    SettingsProvider myProvider = Provider.of<SettingsProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Align(
          alignment: Alignment.center,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.height * 0.17),
                child: Image.asset(myProvider.themeMode == ThemeMode.light
                    ? imagePathByName(imageName: 'sebha_head.png')
                    : imagePathByName(imageName: 'head_of_sebha_dark.png')),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.04,
                ),
                child: AnimatedRotation(
                    duration: Duration(milliseconds: 250),
                    turns: turn,
                  child: Image.asset(myProvider.themeMode == ThemeMode.light
                      ? imagePathByName(imageName: 'sebha_body.png')
                      : imagePathByName(imageName: 'sebha_body_dark.png')),
                ),
              ),
            ],
          ),
        ),
        // SizedBox(height: 43,),
        Column(
          children: [
            Text('عدد التسبيحات',
                style: Theme.of(context).textTheme.labelSmall),
            SizedBox(
              height: 12,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withOpacity(.5),
                  borderRadius: BorderRadius.circular(30)),
              child: Text(
                count.toString(),
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
            SizedBox(
              height: 22,
            ),
            ElevatedButton(
              style: Theme.of(context).elevatedButtonTheme.style,
              onPressed: () {
                setState(() {
                  count++;
                  turn += .04;
                  if (count == 34) {
                    count = 0;
                    index++;

                    if (index == azkar.length) {
                      index = 0;
                    }
                  }
                });
              },
              child: Text(azkar[index],
                  style: Theme.of(context).textTheme.titleSmall),
            ),
          ],
        )
      ],
    );
  }
}
