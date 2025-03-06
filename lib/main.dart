import 'package:flutter/material.dart';

import 'gradient_container.dart';

//author:shupto rahman
//final retouch 3/3/25
void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 238, 10, 103),
          Color.fromARGB(255, 254, 161, 190),
        ),
      ),
    ),
  );
}
