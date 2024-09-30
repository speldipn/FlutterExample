import 'package:flutter/material.dart';
import 'package:flutter_practice/screen/dice_screen.dart';

void main() {
  // check app launched!
  // WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DiceScreen(),
    ),
  );
}
