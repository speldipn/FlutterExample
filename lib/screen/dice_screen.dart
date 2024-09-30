import 'dart:math';

import 'package:flutter/material.dart';

enum Mode { Dice, Setting }

class DiceScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DiceScreen();
}

class _DiceScreen extends State<DiceScreen> {
  Mode mode = Mode.Dice;
  int number = 0;
  double sesitivieValue = 0.0;

  changeMode(Mode changeMode) {
    setState(() {
      mode = changeMode;
    });
  }

  runGame() {
    setState(() {
      number = Random().nextInt(6);
    });
  }

  setSensitiveValue(double value) {
    setState(() {
      sesitivieValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
              child: mode == Mode.Dice
                  ? DiceWidget(number)
                  : SettingWidget(sesitivieValue, setSensitiveValue)),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Buttons(runGame, changeMode),
          ),
        ],
      ),
    ));
  }
}

class DiceWidget extends StatelessWidget {
  final assets = [
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
          children: [assets[number]],
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
              "${number + 1}",
              style: const TextStyle(color: Colors.white, fontSize: 20.0),
            )
          ],
        )
      ],
    ));
  }
}

class SettingWidget extends StatelessWidget {

  double sensitiveValue;
  var setSensitiveValue;

  SettingWidget(this.sensitiveValue, this.setSensitiveValue, {super.key});

  @override
  Widget build(BuildContext context) {
    return (Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Column(
              children: [
                Text("민감도: ${sensitiveValue.toInt()}", style: TextStyle(color: Colors.white)),
                Slider(
                  value: sensitiveValue.toDouble(),
                  max: 100,
                  divisions: 100,
                  label: "${sensitiveValue.toInt()}",
                  onChanged: (value) {
                    print(value);
                    setSensitiveValue(value);
                  },
                ),
              ],
            )
          ],
        ),
      ],
    ));
  }
}

class Buttons extends StatelessWidget {

  var runGame;
  var changeMode;

  Buttons(this.runGame, this.changeMode, {super.key});

  @override
  Widget build(BuildContext context) {
    return (Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
          onPressed: () {
            changeMode(Mode.Dice);
            runGame();
          },
          child: const Column(
            children: [
              Icon(Icons.abc, color: Colors.white),
              Text("주사위", style: TextStyle(color: Colors.white))
            ],
          ),
        ),
        TextButton(
          onPressed: () {
            changeMode(Mode.Setting);
          },
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
