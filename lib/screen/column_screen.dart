import 'package:flutter/material.dart';

class ColumnWidgetExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Container(color: Colors.red),
            ),
            Flexible(
              child: Container(color: Colors.blue),
            ),
          ],
        ),
      ),
    ));
  }
}
