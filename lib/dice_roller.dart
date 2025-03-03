import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentdiceroll = 2;

  void rollDice() {
    setState(() {});
    currentdiceroll = randomizer.nextInt(6) + 1;
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(
                  255,
                  37,
                  2,
                  2,
                ),
                offset: const Offset(5.0, 10.0),
                blurRadius: 10.0,
                spreadRadius: 2.0,
              ), //BoxShadow
            ],
          ),
          child: Image.asset(
            'assets/images/dice-$currentdiceroll.png',
            width: 200,
          ),
        ),
        SizedBox(height: 50),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
          //this container for adding shadow to the button
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                7,
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(
                    255,
                    98,
                    3,
                    41,
                  ),
                  offset: const Offset(3.0, 5.0),
                  blurRadius: 5.0,
                  spreadRadius: 2.0,
                ), //BoxShadow
              ],
            ),
            child: TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(10),
                ),

                // padding: EdgeInsets.only(top: 30),
                foregroundColor: Colors.white,
                backgroundColor:
                    const Color.fromARGB(
                      255,
                      83,
                      1,
                      1,
                    ),

                textStyle: const TextStyle(
                  fontSize: 28,
                ),
              ),
              child: Text('Roll Dice'),
            ),
          ),
        ),
      ],
    );
  }
}
