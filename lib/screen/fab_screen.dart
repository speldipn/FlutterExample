import 'package:flutter/material.dart';

class FloatingActionButtonExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () { print("fab"); }, child: const Text("Click")),
      body: SafeArea(
        top: true,
        left: true,
        right: true,
        bottom: true,
        child: Column(
          children: [
            // Container(
            //     decoration: BoxDecoration(
            //       color: Colors.red,
            //       border: Border.all(color: Colors.blue, width: 16.0),
            //       borderRadius: BorderRadius.circular(16.0),
            //     ),
            //     width: double.infinity,
            //     height: 200.0),
            // SizedBox(
            //   width: 200.0,
            //   height: 200.0,
            //   child: Container(color: Colors.green),
            // ),
            Container(
              color: Colors.black,
              padding: const EdgeInsets.all(20.0),
              // px
              child: Container(
                  color: Colors.blue,
                  child: Container(width: 50, height: 50, color: Colors.red, margin: const EdgeInsets.all(20.0)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
