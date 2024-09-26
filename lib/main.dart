import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            Container(color: const Color(0xFFF99231)),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 150.0,
                    height: 150.0,
                    child: Image.asset("assets/logo.png"),
                  ),
                  const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.white),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}

// class WebViewExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var controller = WebViewController()
//       ..setJavaScriptMode(JavaScriptMode.unrestricted)
//       ..setNavigationDelegate(
//         NavigationDelegate(
//           onProgress: (int progress) {
//             // Update loading bar.
//           },
//           onPageStarted: (String url) {},
//           onPageFinished: (String url) {},
//           onHttpError: (HttpResponseError error) {},
//           onWebResourceError: (WebResourceError error) {},
//           onNavigationRequest: (NavigationRequest request) {
//             if (request.url.startsWith('https://www.youtube.com/')) {
//               return NavigationDecision.prevent;
//             }
//             return NavigationDecision.navigate;
//           },
//         ),
//       )
//       ..loadRequest(Uri.parse('https://google.co.kr'));
//
//     return (MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//           appBar: AppBar(title: const Text('webview_flutter')),
//           body: WebViewWidget(controller: controller)),
//     ));
//   }
// }
//
// class StackWidgetExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return (MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: SizedBox(
//           child: Stack(
//             children: [
//               Container(width: 300.0, height: 300.0, color: Colors.red),
//               Container(width: 250.0, height: 250.0, color: Colors.green),
//               Container(width: 200.0, height: 200.0, color: Colors.blue),
//             ],
//           ),
//         ),
//       ),
//     ));
//   }
// }
//
// class ColumnWidgetExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return (MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: SizedBox(
//           width: double.infinity,
//           child: Column(
//             children: [
//               Expanded(
//                 child: Container(color: Colors.red),
//               ),
//               Flexible(
//                 child: Container(color: Colors.blue),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ));
//   }
// }
//
// class RowWidgetExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return (MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: SizedBox(
//           height: double.infinity,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Container(width: 50.0, height: 50.0, color: Colors.red),
//               Container(width: 50.0, height: 50.0, color: Colors.green),
//               Container(width: 50.0, height: 50.0, color: Colors.blue),
//             ],
//           ),
//         ),
//       ),
//     ));
//   }
// }

// class FloatingActionButtonExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         floatingActionButton: FloatingActionButton(
//             onPressed: () {
//               print("fab");
//             },
//             child: Text("Click")),
//         body: SafeArea(
//           top: true,
//           left: true,
//           right: true,
//           bottom: true,
//           child: Column(
//             children: [
//               // Container(
//               //     decoration: BoxDecoration(
//               //       color: Colors.red,
//               //       border: Border.all(color: Colors.blue, width: 16.0),
//               //       borderRadius: BorderRadius.circular(16.0),
//               //     ),
//               //     width: double.infinity,
//               //     height: 200.0),
//               // SizedBox(
//               //   width: 200.0,
//               //   height: 200.0,
//               //   child: Container(color: Colors.green),
//               // ),
//               Container(
//                 color: Colors.black,
//                 padding: const EdgeInsets.all(20.0),
//                 // px
//                 child: Container(
//                     color: Colors.blue,
//                     child: Container(
//                         width: 50,
//                         height: 50,
//                         color: Colors.red,
//                         margin: const EdgeInsets.all(20.0))),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Center(
//           child: Column(
//             children: [
//               TextButton(
//                 onPressed: () {
//                   print("TextButton");
//                 },
//                 style: TextButton.styleFrom(foregroundColor: Colors.red),
//                 child: const Text(
//                   "TextButton",
//                 ),
//               ),
//               OutlinedButton(
//                 onPressed: () {
//                   print("OutlinedButton");
//                 },
//                 style: OutlinedButton.styleFrom(foregroundColor: Colors.red),
//                 child: const Text(
//                   "OutlinedButton",
//                 ),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   print("ElevatedButton");
//                 },
//                 style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
//                 child: const Text(
//                   "ElevatedButton",
//                 ),
//               ),
//               IconButton(
//                 onPressed: () {
//                   print("IconButton");
//                 },
//                 icon: const Icon(
//                   Icons.home,
//                   color: Colors.blue,
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   print("onTab");
//                 },
//                 onDoubleTap: () {
//                   print("onDoubleTap");
//                 },
//                 onLongPress: () {
//                   print("onLongPress");
//                 },
//                 child: Container(
//                   decoration: const BoxDecoration(color: Colors.blue),
//                   width: 100.0,
//                   height: 100.0,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
