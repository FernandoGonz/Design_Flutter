import 'package:dessing_app/home.dart';
import 'package:dessing_app/scroll_page.dart';
import 'package:dessing_app/wonderful_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'wonderful_home',
      routes: {
        'home': (BuildContext context) => Home(),
        'scroll_page': (BuildContext context) => ScrollPage(),
        'wonderful_home': (BuildContext context) => WonderfulHome(),
      },
    );
  }
}
