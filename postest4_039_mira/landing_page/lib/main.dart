import 'package:flutter/material.dart';
import 'package:landing_page/page/homescreen.dart';
import 'package:landing_page/page/startpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: StartPage(),
    );
  }
}
