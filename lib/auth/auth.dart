import 'package:flutter/material.dart';
import 'package:ox_game/auth/widget/custom_button.dart';
import 'package:ox_game/auth/widget/custom_textfiled.dart';
import 'package:ox_game/oxScreen/ox_screen.dart';

class Auth extends StatelessWidget {
  Auth({super.key});
  final TextEditingController player1Controller = TextEditingController();
  final TextEditingController player2Controller = TextEditingController();
  final GlobalKey<FormState> formState = GlobalKey<FormState>();
  static String id = "auth_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formState,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextFiled(
                  controller: player1Controller,
                  hintText: "player1",
                  label: 'player1',
                ),
                const SizedBox(height: 10),
                CustomTextFiled(
                  controller: player2Controller,

                  hintText: "player2",
                  label: 'player2',
                ),
                const SizedBox(height: 30),

                CustomButton(
                  onPressed: () {
                    if (formState.currentState!.validate()) {
                      Navigator.pushNamed(
                        context,
                        OxScreen.id,
                        arguments: {
                          "Player1": player1Controller.text.isEmpty
                              ? "Player1"
                              : player1Controller.text,
                          "Player2": player2Controller.text.isEmpty
                              ? "player2"
                              : player2Controller.text,
                        },
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
