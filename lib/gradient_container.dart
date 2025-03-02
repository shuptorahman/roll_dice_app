import 'package:flutter/material.dart';
import 'styled_text.dart';

var alignmentTop = Alignment.topLeft;
var alignmentBottom = Alignment.bottomRight;

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
        child: Image.asset(
          'assets/images/dice-1.png',
        ),
      ),
    );
  }
}
