import 'package:flutter/material.dart';
import 'package:ox_game/const.dart';

class Players extends StatelessWidget {
  const Players({
    super.key,
    required this.player1,
    required this.player2,
    required this.int1,
    required this.int2,
  });
  final String player1;
  final String player2;
  final int int1;
  final int int2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(player1, style: Styles.textStyle20),
            Text("$int1", style: Styles.textStyle30),
          ],
        ),
        Column(
          children: [
            Text(player2, style: Styles.textStyle20),
            Text("$int2", style: Styles.textStyle30),
          ],
        ),
      ],
    );
  }
}
