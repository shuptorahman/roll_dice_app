import 'package:flutter/material.dart';

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

  void rollDice() {
    //..........
  }

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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-1.png',
              width: 200,
            ),
            SizedBox(height: 30),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                // padding: EdgeInsets.only(top: 30),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
              ),
              child: Text('Roll Dice'),
            ),
          ],
        ),
      ),
    );
  }
}
