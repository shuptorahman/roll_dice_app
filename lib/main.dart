import 'package:flutter/material.dart';

import 'gradient_container.dart';

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
