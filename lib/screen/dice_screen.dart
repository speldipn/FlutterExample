import 'dart:math';

import 'package:flutter/material.dart';

class DiceScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DiceScreen();
}

class _DiceScreen extends State<DiceScreen> {
  int number = 1;

  runGame() {
    setState(() {
      number = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(child: DiceWidget(number)),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Buttons(runGame),
          ),
        ],
      ),
    ));
  }
}

class DiceWidget extends StatelessWidget {

  final assets = [
    Image.asset("asset/dice/1.png"),
    Image.asset("asset/dice/1.png"),
    Image.asset("asset/dice/2.png"),
    Image.asset("asset/dice/3.png"),
    Image.asset("asset/dice/4.png"),
    Image.asset("asset/dice/5.png"),
    Image.asset("asset/dice/6.png"),
  ];

  int number;

  DiceWidget(this.number);

  @override
  Widget build(BuildContext context) {
    return (Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            assets[number]
          ],
        ),
        Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "행운의 숫자",
                style: TextStyle(color: Colors.white, fontSize: 25.0),
              ),
            ),
            Text(
              "$number",
              style: const TextStyle(color: Colors.white, fontSize: 20.0),
            )
          ],
        )
      ],
    ));
  }
}

class Buttons extends StatelessWidget {
  var runGame;

  Buttons(this.runGame);

  @override
  Widget build(BuildContext context) {
    return (Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
          onPressed: runGame,
          child: const Column(
            children: [
              Icon(Icons.abc, color: Colors.white),
              Text("주사위", style: TextStyle(color: Colors.white))
            ],
          ),
        ),
        TextButton(
          onPressed: () { print("설정"); },
          child: const Column(
            children: [
              Icon(Icons.settings, color: Colors.white),
              Text("설정", style: TextStyle(color: Colors.white))
            ],
          ),
        )
      ],
    ));
  }
}
