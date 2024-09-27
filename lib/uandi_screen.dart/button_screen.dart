import 'package:flutter/material.dart';

class ButtonExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                print("TextButton");
              },
              style: TextButton.styleFrom(foregroundColor: Colors.red),
              child: const Text(
                "TextButton",
              ),
            ),
            OutlinedButton(
              onPressed: () {
                print("OutlinedButton");
              },
              style: OutlinedButton.styleFrom(foregroundColor: Colors.red),
              child: const Text(
                "OutlinedButton",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print("ElevatedButton");
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text(
                "ElevatedButton",
              ),
            ),
            IconButton(
              onPressed: () {
                print("IconButton");
              },
              icon: const Icon(
                Icons.home,
                color: Colors.blue,
              ),
            ),
            GestureDetector(
              onTap: () {
                print("onTab");
              },
              onDoubleTap: () {
                print("onDoubleTap");
              },
              onLongPress: () {
                print("onLongPress");
              },
              child: Container(width: 100.0, height: 100.0, decoration: const BoxDecoration(color: Colors.blue)),
            ),
          ],
        ),
      ),
    ));
  }
}
