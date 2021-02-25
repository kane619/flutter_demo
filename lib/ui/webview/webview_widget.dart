import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewWidget extends StatefulWidget {
  @override
  _WebViewWidgetState createState() => _WebViewWidgetState();
}

class _WebViewWidgetState extends State<WebViewWidget> {
  bool _loading = true;

  @override
  Widget build(BuildContext context) {
    WebViewController _controller;
    return Scaffold(
      appBar: AppBar(
        title: Text("测试web"),
      ),
      body: WebView(
          initialUrl: 'https://www.baidu.com/',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (controller) {
            _controller = controller;
          },
          onPageFinished: (url) {
            setState(() {
              _loading = false;
            });
          },
          onPageStarted: (url) {},
          navigationDelegate: (NavigationRequest request) {
            if (request.url.startsWith("map://")) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
          javascriptChannels:<JavascriptChannel> {
            JavascriptChannel(
                name: 'toDo',
                onMessageReceived: (JavascriptMessage message) {
                  Navigator.pushNamed(context, '/toDo');
                }
            ),
          }
      ),
    );
  }
}
