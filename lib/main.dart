import 'package:dessing_app/home.dart';
import 'package:dessing_app/scroll_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'scroll_page',
      routes: {
        'home': (BuildContext context) => Home(),
        'scroll_page': (BuildContext context) => ScrollPage(),
      },
    );
  }
}
