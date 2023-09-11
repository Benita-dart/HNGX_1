import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';


import 'home.dart';

void main() {

  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  final String name = 'Your Name';
  final String profilePictureURL = 'profile_picture_url';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
