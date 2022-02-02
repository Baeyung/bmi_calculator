import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget? cardChild;
  const ReusableCard({Key? key, required this.colour, this.cardChild})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
