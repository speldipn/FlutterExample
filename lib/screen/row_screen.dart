import 'package:flutter/material.dart';

class RowWidgetExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(width: 50.0, height: 50.0, color: Colors.red),
            Container(width: 50.0, height: 50.0, color: Colors.green),
            Container(width: 50.0, height: 50.0, color: Colors.blue),
          ],
        ),
      ),
    ));
  }
}
