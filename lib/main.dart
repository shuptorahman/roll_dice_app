import 'package:flutter/material.dart';

var alignmentTop = Alignment.topLeft;
var alignmentBottom = Alignment.bottomRight;

void main() {
  runApp(
    Material(
      child: GradientContainer(
        Colors.black26,
        Colors.amberAccent,
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
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colorOne, colorTwo],
          begin: alignmentTop,
          end: alignmentBottom,
        ),
      ),
    );
  }
}
