
import 'package:facebook_ui/pages/facebook_ui.dart';
import 'package:facebook_ui/pages/old_facebook_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: Text('Open Message'),
              color: Colors.blue,
              onPressed: () {
                Navigator.of(context).pushNamed(FacebookUi.id);
              },
            ),
            MaterialButton(
              child: Text('Open Facebook'),
              color: Colors.blue,
              onPressed: () {
                Navigator.of(context).pushNamed(OldFacebookPage.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
