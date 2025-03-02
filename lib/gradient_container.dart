import 'package:flutter/material.dart';
import 'package:roll_dice_app/dice_roller.dart';

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
      child: Center(child: DiceRoller()),
    );
  }
}
