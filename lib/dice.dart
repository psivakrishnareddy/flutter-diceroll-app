import 'dart:math';

import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() {
    return _Dice();
  }
}

class _Dice extends State<Dice> {
  var diceImage = 'assets/images/dice-1.png';
  void rollDice() {
    const List<String> dice = [
      'assets/images/dice-1.png',
      'assets/images/dice-2.png',
      'assets/images/dice-3.png',
      'assets/images/dice-4.png',
      'assets/images/dice-5.png',
      'assets/images/dice-6.png'
    ];

    final int rollnum = Random().nextInt(6);
    setState(() {
      // Stateful extened classes to reflect changes should use the setstate
      diceImage = dice[rollnum];
    });

    print("Changing dice: $rollnum");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          diceImage,
          width: 200,
          height: 200,
        ),
        OutlinedButton(
          // onPressed: () {}, // annonymous function
          onPressed: rollDice,
          style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.black,
              textStyle: const TextStyle(color: Colors.amber, fontSize: 16)),
          child: const Text("Roll Dice"),
        )
      ],
    );
  }
}
