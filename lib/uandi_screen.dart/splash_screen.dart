import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
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
    ));
  }
}
