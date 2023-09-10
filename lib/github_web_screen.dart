import 'package:flutter/material.dart';
import 'package:profile_app/constants.dart';
import 'package:webview_flutter/webview_flutter.dart';



class GitHubWebView extends StatefulWidget {
  // final String url;

  GitHubWebView();

  @override
  State<GitHubWebView> createState() => _GitHubWebViewState();
}

class _GitHubWebViewState extends State<GitHubWebView> {
    var loadingPercentage = 0;
   late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
    ..setNavigationDelegate(NavigationDelegate(
      onPageStarted: (url){
        setState(() {
          loadingPercentage = 0;
        });
      },
      onProgress: (progress){
        setState(() {
          loadingPercentage = progress;
        });
      },
      onPageFinished: (url){
        setState(() {
          loadingPercentage = 100;
        });
      }
    ))
    // ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(
        Uri.parse('https://github.com/emjaycodes'),
      );
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kprimaryAccentColor,
        title: const Text('GitHub Profile', style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: Colors.black
            ),),
      ),
      body: Stack(
        children: [
           WebViewWidget(
          controller: controller,
        ),
        if (loadingPercentage < 100)
          LinearProgressIndicator(
            value: loadingPercentage / 100.0,
          ),
        ],
      ),
    );
  }
}