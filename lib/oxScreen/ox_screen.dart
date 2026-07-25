import 'package:flutter/material.dart';
import 'package:ox_game/const.dart';
import 'package:ox_game/oxScreen/widget/custom_graid_view.dart';
import 'package:ox_game/oxScreen/widget/player.dart';

class OxScreen extends StatefulWidget {
  const OxScreen({super.key});

  static String id = "oxScreen";

  @override
  State<OxScreen> createState() => _OxScreenState();
}

class _OxScreenState extends State<OxScreen> {
  int index1 = 0;

  int index2 = 0;

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final String Player1 = args["Player1"] ?? "play1";
    final String Player2 = args["Player2"] ?? "play2";

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const Text(
          "O x Game",
          style: TextStyle(color: kcolor, fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          Players(
            player1: Player1,
            player2: Player2,
            int1: index1,
            int2: index2,
          ),
          const SizedBox(height: 50),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomGraidView(
                onWin: (winner) {
                  setState(() {
                    if (winner == "x") {
                      index1++;
                    } else if (winner == "o") {
                      index2++;
                    }
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
