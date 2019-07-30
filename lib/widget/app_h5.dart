import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';
//import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class AppWebView extends StatelessWidget {


  final String url;


  const AppWebView({this.url}):super();

  @override
  Widget build(BuildContext context) {

    Completer<WebViewController> _controller = Completer<WebViewController>();

    Future<Null> toRefresh() async{}

    return WebView(
      initialUrl: url,
      javascriptMode: JavascriptMode.unrestricted,
      onWebViewCreated: (WebViewController webViewController) {
        _controller.complete(webViewController);
      },
      // TODO(iskakaushik): Remove this when collection literals makes it to stable.
      // ignore: prefer_collection_literals
      javascriptChannels: <JavascriptChannel>[].toSet(),
//      navigationDelegate: (NavigationRequest request) {
//        if (request.url.startsWith('https://www.youtube.com/')) {
//          print('blocking navigation to $request}');
//          return NavigationDecision.prevent;
//        }
//        print('allowing navigation to $request');
//        return NavigationDecision.navigate;
//      },
      onPageFinished: (String url) {
        print('Page finished loading: $url');
      },
    );
  }
}
