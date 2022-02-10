import 'package:bmi_calculator/constants/konstants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final void Function() onTap;
  final String buttonText;
  const BottomButton({
    required this.onTap,
    required this.buttonText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonText,
            style: kButtonTextStyle,
          ),
        ),
        width: double.infinity,
        height: kCalculateButtonHeight,
        margin: const EdgeInsets.only(
          top: 10,
          bottom: 10,
        ),
        decoration: BoxDecoration(
          color: kBottomBarColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
