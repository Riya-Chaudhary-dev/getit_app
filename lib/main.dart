import 'package:flutter/material.dart';
import 'package:getit/detailprofile.dart';
import 'homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff00EEEE),
        appBarTheme: AppBarTheme(
          color: Color(0xff00EEEE)
        )
      ),
      home: FirstApp(),
    );
  }
}

