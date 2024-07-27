
import 'package:flutter/material.dart';
import 'package:islami_app_flutter/home/home.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.rotueName,

      routes: {
        HomeScreen.rotueName : (context) => HomeScreen()
      },
    );
  }
}

void main(){
  runApp(MyApp());
}