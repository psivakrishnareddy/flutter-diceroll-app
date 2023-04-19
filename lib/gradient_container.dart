import 'package:flutter/material.dart';

import 'style_text.dart';

const topAlignment = Alignment.topLeft;
const bottomAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  GradientContainer(
      {super.key,
      required this.colors}); //By Default named arguments are optional for default use []
  final List<Color>
      colors; //final takes the computed value unlike const that is in compile time, improves performance
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: colors, begin: topAlignment, end: bottomAlignment)),
      child: Center(child: StyledText('Hello World!')),
    );
  }
}
