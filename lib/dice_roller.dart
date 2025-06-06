import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  var activeDiceImage = 'assets/images/dice-2.png';

  void rollDice() {
    var diceRoll = randomizer.nextInt(6) + 1;
    setState(() {  
      activeDiceImage = 'assets/images/dice-$diceRoll.png';
    });
  }
  @override
  Widget build(context){
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(activeDiceImage, width: 200),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding: EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 28),
              ),
              child: const Text("Roll Dice"),
            ),
          ],
        );
  }
}