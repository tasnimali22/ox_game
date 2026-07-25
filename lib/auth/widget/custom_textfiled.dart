import 'package:flutter/material.dart';
import 'package:ox_game/const.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({
    this.onchanged,
    super.key,
    required this.hintText,
    required this.label,
    required this.controller,
  });
  final String hintText;
  final String label;
  final Function(String)? onchanged;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Styles.textStyle20.copyWith(fontWeight: FontWeight.normal),
      validator: (dats) {
        if (dats!.isEmpty) {
          return 'this filed is empty';
        }
        return null;
      },
      controller: controller,
      onChanged: onchanged,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.person_3_sharp),
        prefixIconColor: kcolor,
        labelStyle: const TextStyle(color: kcolor),

        labelText: label,
        hintText: hintText,
        hintStyle: const TextStyle(color: kcolor),
        enabledBorder: outlineBorder(),
        focusedBorder: outlineBorder(),
        disabledBorder: outlineBorder(),
        border: const OutlineInputBorder(borderSide: BorderSide(color: kcolor)),
      ),
    );
  }

  OutlineInputBorder outlineBorder() {
    return const OutlineInputBorder(borderSide: BorderSide(color: kcolor));
  }
}
