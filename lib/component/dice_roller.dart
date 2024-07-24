import "dart:math";
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:roll_dice_game/component/ui/set-svg.dart';
import 'package:roll_dice_game/styled_text.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDice = 'assets/svg/dice-1.svg';
  var label = 'dice 1';
  int rollDice = 1;

  //^ roll dice handler
  void rollDiceHandler() {
    int tempNum = 1;

    int randomNum = randomizer.nextInt(6);
    if (randomNum == 0) {
      tempNum = rollDice;
    } else {
      tempNum = randomNum;
    }

    // print('\nRandom Number: $randomNum');
    setState(() {
      rollDice = tempNum;
      label = 'dice $tempNum';
      activeDice = 'assets/svg/dice-$tempNum.svg';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Center(
          child: Container(
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Color(0xFFA67757),
                  offset: Offset(0, 0.5),
                  blurRadius: 7,
                  spreadRadius: -5,
                )
              ],
              borderRadius: BorderRadius.circular(20),
            ),
            child: SetSvg(assetUrl: activeDice, label: label),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDiceHandler,
          style: TextButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            foregroundColor: Colors.white,
            backgroundColor: const Color(0xFFd5936d),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SetSvg(
                  assetUrl: "assets/svg/random.svg", label: "Random Icon"),
              const SizedBox(
                width: 10,
              ),
              StyledText(
                text: "Roll Dice",
                color: const Color(0xDDFFFFFE),
                fontSize: 23,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
