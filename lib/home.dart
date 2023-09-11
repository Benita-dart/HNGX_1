
import 'package:flutter/material.dart';
import 'package:hngx_1/WebView.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  final String name = 'Your Name';
  final String profilePictureURL = 'profile_picture_url';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // late final WebViewController controller;
  @override
  // void initState() {
  //   super.initState();
  //   controller = WebViewController()
  //     ..loadRequest(
  //       Uri.parse('https://github.com/BenitaR-png'),
  //     );
  // }

  Widget build(BuildContext context) {
    Uri website = Uri.parse("https://github.com/BenitaR-png");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Slack'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('images/benita.jpg'),
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Benita Ogechi Eze',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (_)=>WebView()));
                },
                child: const Text('Open GitHub'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
