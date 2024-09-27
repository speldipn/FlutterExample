import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewExampleScreen extends StatelessWidget {
  final baseUrl =
      "https://goldenrabbit.co.kr/product/must-have-codefactory-flutter";

  @override
  Widget build(BuildContext context) {
    var controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {
            print("load finished ${url}");
          },
          onHttpError: (HttpResponseError error) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(baseUrl));

    return (Scaffold(
      appBar: AppBar(
        title: const Text('Code Factory Flutter'),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              controller.loadRequest(Uri.parse(baseUrl));
            },
            icon: const Icon(Icons.home, color: Colors.orange),
          ),
        ],
      ),
      body: WebViewWidget(controller: controller),
    ));
  }
}
