

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebView extends StatefulWidget {
  const WebView({Key? key}) : super(key: key);

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {

  late WebViewController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     controller = WebViewController()
         ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..setBackgroundColor(Color(0x00000000))
          ..setNavigationDelegate(
         NavigationDelegate(
            onProgress: (int progress) {
          },
            onPageStarted: (String url) {},
            onPageFinished: (String url) {},
            onWebResourceError: (WebResourceError error) {},
            onNavigationRequest: (NavigationRequest request) {
                 // if (request.url.startsWith('https://www.youtube.com/')) {
                  //   return NavigationDecision.prevent;
                  // }
              return NavigationDecision.navigate;
               },
              ),
            )
               ..loadRequest(Uri.parse('https://github.com/BenitaR-png'));
          }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Profile'
        ),
      ),
      body: WebViewWidget(controller: controller,
      ),
    );
  }

}