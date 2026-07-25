import 'package:flutter/material.dart';
import 'package:ox_game/auth/auth.dart';
import 'package:ox_game/const.dart';
import 'package:ox_game/oxScreen/ox_screen.dart';
import 'package:ox_game/splash/splash.dart';

void main() {
  runApp(const Ox_game());
}

// ignore: camel_case_types
class Ox_game extends StatelessWidget {
  const Ox_game({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Auth.id: (context) => Auth(),
        OxScreen.id: (context) => OxScreen(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kkcolor),

      initialRoute: Auth.id,
      home: const Splash(),
    );
  }
}
