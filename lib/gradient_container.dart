import 'package:flutter/material.dart';
import 'dart:math';

import 'package:my_first_app/dice.dart';
// import 'style_text.dart';

const topAlignment = Alignment.topLeft;
const bottomAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // GradientContainer(
  //     {super.key,
  //     required this.colors}); //By Default named arguments are optional for default use []
  // final List<Color>
  //     colors; //final takes the computed value unlike const that is in compile time, improves performance

  final Color color1;
  final Color color2;
  const GradientContainer.orange({super.key})
      : color1 = Colors.deepOrange,
        color2 = Colors.orange;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color1, color2],
                begin: topAlignment,
                end: bottomAlignment)),
        // child: Center(child: StyledText('Hello World!')),
        child: Center(child: Dice()));
  }
}
