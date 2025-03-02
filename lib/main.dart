import 'package:flutter/material.dart';

var alignmentTop = Alignment.topLeft;
var alignmentBottom = Alignment.bottomRight;

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          const Color.fromARGB(255, 1, 15, 86),
          const Color.fromARGB(255, 26, 158, 198),
        ),
      ),
    ),
  );
}

class GradientContainer extends StatelessWidget {
  const GradientContainer(
    this.colorOne,
    this.colorTwo, {
    super.key,
  });
  final Color colorOne;
  final Color colorTwo;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colorOne, colorTwo],
          begin: alignmentTop,
          end: alignmentBottom,
        ),
      ),
      child: Center(
        child: StyledText('ROLL DICE APP'),
      ),
    );
  }
}

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});
  final String text;
  @override
  Widget build(context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 28,
        color: Colors.white,
      ),
    );
  }
}
