import 'package:flutter/material.dart';

class TopWidgets extends StatelessWidget {
  final IconData widgetIcons;
  final String str;
  const TopWidgets({Key? key, required this.widgetIcons, required this.str})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          widgetIcons,
          size: 80,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(str,
            style: const TextStyle(color: Color(0xff8d8e98), fontSize: 18))
      ],
    );
  }
}
