import 'package:flutter/material.dart';

class StackWidgetExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: SizedBox(
        child: Stack(
          children: [
            Container(width: 300.0, height: 300.0, color: Colors.red),
            Container(width: 250.0, height: 250.0, color: Colors.green),
            Container(width: 200.0, height: 200.0, color: Colors.blue),
          ],
        ),
      ),
    ));
  }
}
