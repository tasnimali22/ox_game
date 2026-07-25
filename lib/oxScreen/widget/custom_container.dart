import 'package:flutter/material.dart';
import 'package:ox_game/const.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.index,
    required this.onTap,
    required this.listgame,
  });
  final int index;
  final void Function()? onTap;
  final List<String> listgame;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: kcolor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            listgame[index],
            style: const TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 50,
              color: kkcolor,
            ),
          ),
        ),
      ),
    );
  }
}
