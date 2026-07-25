import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:ox_game/oxScreen/widget/custom_container.dart';

class CustomGraidView extends StatefulWidget {
  const CustomGraidView({super.key, required this.onWin});
  final Function(String winner) onWin;

  @override
  State<CustomGraidView> createState() => _CustomGraidViewState();
}

final AudioPlayer audio = AudioPlayer();

class _CustomGraidViewState extends State<CustomGraidView> {
  List<String> game = List.filled(9, "");

  String player = "x";
  String winner = "";
  int index1 = 0;
  int index2 = 0;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 9,
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1.2,
        crossAxisSpacing: 7,
        mainAxisSpacing: 7,
      ),
      itemBuilder: (BuildContext context, int index) {
        return CustomContainer(
          index: index,
          onTap: () {
            turnPlay(index);
          },
          listgame: game,
        );
      },
    );
  }

  // Future<void> sound({required String filename}) async {
  //   await audio.play(AssetSource(filename));
  // }

  void turnPlay(int index) {
    if (game[index] == "" && winner == "") {
      setState(() {
        game[index] = player;
      });
      // sound(filename: "sound/mixkit-cartoon-toy-whistle-616.wav");
      String? reslet = checkWinner();
      if (reslet != null && reslet != "") {
        winner = reslet;
        widget.onWin(winner);
        // sound(filename: "sound/mixkit-small-group-cheer-and-applause-518.wav");
        customShowDialog(title: '"congratulation 🇪🇬💃🎉🎉"');
      } else if (!game.contains("") && winner.isEmpty) {
        // ignore: void_checks
        return customShowDialog(title: "Tie😎");
        // sound(filename: "sound/mixkit-arcade-retro-game-over-213.wav");
      } else {
        currentPlayer();
      }
    }
  }

  dynamic customShowDialog({required String title}) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(),
          title: Text(title),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  reset(context);
                });
              },
              child: const Text("!تلعب مرة تانية"),
            ),
          ],
        );
      },
    );
  }

  void reset(BuildContext context) {
    game = List.filled(9, "");
    player = "o";
    winner = "";
    Navigator.pop(context);
  }

  void currentPlayer() {
    player = player == "x" ? "o" : "x";
  }

  String? checkWinner() {
    if (game[0] != "" && game[0] == game[1] && game[1] == game[2]) {
      return game[0];
    }
    if (game[5] != "" && game[5] == game[4] && game[4] == game[3]) {
      return game[5];
    }
    if (game[8] != "" && game[8] == game[7] && game[7] == game[6]) {
      return game[8];
    }
    if (game[2] != "" && game[2] == game[5] && game[5] == game[8]) {
      return game[2];
    }
    if (game[1] != "" && game[1] == game[4] && game[4] == game[7]) {
      return game[1];
    }
    if (game[0] != "" && game[0] == game[3] && game[3] == game[6]) {
      return game[0];
    }
    if (game[2] != "" && game[2] == game[4] && game[4] == game[6]) {
      return game[2];
    }
    if (game[0] != "" && game[0] == game[4] && game[4] == game[8]) {
      return game[0];
    }
    return null;
  }
}
