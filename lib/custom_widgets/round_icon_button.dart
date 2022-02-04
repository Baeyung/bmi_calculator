import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/konstants.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({Key? key, required this.onPressed, required this.icon})
      : super(key: key);
  final void Function() onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: kInactiveCardColor,
      child: Icon(icon),
      shape: const CircleBorder(),
      constraints: kSizeConstraints,
    );
  }
}
