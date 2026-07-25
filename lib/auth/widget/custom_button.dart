import 'package:flutter/material.dart';
import 'package:ox_game/const.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed});
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: kcolor,
        foregroundColor: kkcolor,
        maximumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onPressed: onPressed,
      child: Text(
        "Start",
        style: Styles.textStyle20.copyWith(
          color: kkcolor,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
