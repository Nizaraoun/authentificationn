// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

class recaptcha extends StatefulWidget {
  const recaptcha({super.key});

  @override
  State<recaptcha> createState() => _recaptchaState();
}

class _recaptchaState extends State<recaptcha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: WebViewPlus(
      javascriptMode: JavascriptMode.unrestricted,
      onWebViewCreated: (controller) {
        controller.loadUrl("assets/webpage/index.html");
      },
    ));
  }
}
