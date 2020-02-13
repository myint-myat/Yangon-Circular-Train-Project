import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';


class WebView extends StatefulWidget {
  @override
  _WebViewState createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Myanmar Railway Website"),
      ),
      body:Container(
        child: WebviewScaffold(
          url: "https://www.google.com",
          withZoom: false,
          withLocalStorage: true,
        ),
      )
    );
  }
}
