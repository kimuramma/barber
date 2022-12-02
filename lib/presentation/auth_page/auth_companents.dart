import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

import '../constants.dart';

//custom textfield widget with gradient
class FormWidget extends StatelessWidget {
  const FormWidget({
    Key? key,
    required this.labelText,
    required this.firstColor,
    required this.secondColor,
    required this.prefIcon,
    required this.controller,
    required this.obscureText,
  }) : super(key: key);
  final String labelText;
  final Color firstColor;
  final Color secondColor;
  final Icon prefIcon;
  final TextEditingController controller;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: TextField(
        obscureText: obscureText,
        controller: controller,
        decoration: InputDecoration(
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(width: 0, style: BorderStyle.none)),
            fillColor: kBackgroundyColor,
            filled: true,
            focusedBorder: GradientOutlineInputBorder(
                gradient: LinearGradient(colors: [firstColor, secondColor]),
                width: 2,
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            prefixIcon: prefIcon,
            label: Text(
              labelText,
              style: const TextStyle(fontSize: 15),
            )),
      ),
    );
  }
}

//Elevated button with gradient

class ElevatedButtonWithGradient extends StatelessWidget {
  const ElevatedButtonWithGradient({
    Key? key,
    required this.text,
    this.ontap,
  }) : super(key: key);
  final String text;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        onPressed: ontap,
        child: Ink(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0XFFFFB800), Color(0XFFFF004D)],
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            width: 216,
            height: 43,
            alignment: Alignment.center,
            child: Text(text),
          ),
        ));
  }
}
