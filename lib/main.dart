import 'package:facebook_ui/pages/discover_page.dart';
import 'package:facebook_ui/pages/facebook_ui.dart';
import 'package:facebook_ui/pages/home_page.dart';
import 'package:facebook_ui/pages/old_facebook_page.dart';
import 'package:facebook_ui/pages/people_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        FacebookUi.id:(context) => FacebookUi(),
        HomePage.id:(context) => HomePage(),
        PeoplePage.id:(context) => PeoplePage(),
        DiscoverPage.id:(context) => DiscoverPage(),
        OldFacebookPage.id:(context) => OldFacebookPage(),
      },
    );
  }
}

