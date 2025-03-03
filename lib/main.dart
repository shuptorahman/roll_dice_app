import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 238, 10, 103),
          Color.fromARGB(255, 254, 161, 190),
        ),
      ),
    ),
  );
}
