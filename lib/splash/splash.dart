import 'package:flutter/material.dart';
import 'package:ox_game/auth/auth.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    naveigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.network(
          "https://www.shutterstock.com/image-photo/ox-wood-board-game-on-260nw-2330408901.jpg",
        ),
      ],
    );
  }

  void naveigateToHome() {
    Future.delayed(const Duration(milliseconds: 200), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return Auth();
          },
        ),
      );
      // ignore: use_build_context_synchronously
    });
  }
}
