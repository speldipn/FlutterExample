import 'package:flutter/material.dart';
import 'package:flutter_practice/screen/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // check app launched!

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ),
  );
}
