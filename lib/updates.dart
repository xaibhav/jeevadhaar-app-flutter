import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class webweb extends StatefulWidget {
  @override
  _webwebState createState() => _webwebState();
}

class _webwebState extends State<webweb> {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: "https://aakzsh.github.io/jeevadhaar-web-views/updates.html",
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
class Webviewforhelplines extends StatefulWidget {
  @override
  _WebviewforhelplinesState createState() => _WebviewforhelplinesState();
}

class _WebviewforhelplinesState extends State<Webviewforhelplines> {
  @override
  Widget build(BuildContext context) {
    return  WebView(
      initialUrl: "https://aakzsh.github.io/jeevadhaar-web-views/helplines.html",
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}

class Userguide extends StatefulWidget {
  @override
  _UserguideState createState() => _UserguideState();
}

class _UserguideState extends State<Userguide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "User-Guide",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: WebView(
        initialUrl: "https://aakzsh.github.io/jeevadhaar-web-views",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );

  }
}

class DoandDont extends StatefulWidget {
  @override
  _DoandDontState createState() => _DoandDontState();
}

class _DoandDontState extends State<DoandDont> {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: "https://aakzsh.github.io/jeevadhaar-web-views/doanddont.html",
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
class Framework extends StatefulWidget {
  @override
  _FrameworkState createState() => _FrameworkState();
}

class _FrameworkState extends State<Framework> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "App Framework",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: WebView(
        initialUrl: "https://aakzsh.github.io/jeevadhaar-web-views/framework.html",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
class Privacy extends StatefulWidget {
  @override
  _PrivacyState createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Privacy Policy",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: WebView(
        initialUrl: "https://aakzsh.github.io/jeevadhaar-web-views/privacy.html",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
