import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff0B0D22),
        title: const Text('BMI Calcultor'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ReusableCard(colour: Color(0xff1a1e33)),
                ),
                Expanded(child: ReusableCard(colour: Color(0xff1a1e33))),
              ],
            ),
          ),
          const Expanded(child: ReusableCard(colour: Color(0xff1a1e33))),
          Expanded(
            child: Row(
              children: const [
                Expanded(child: ReusableCard(colour: Color(0xff1a1e33))),
                Expanded(child: ReusableCard(colour: Color(0xff1a1e33))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color colour;
  const ReusableCard({Key? key, required this.colour}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration:
          BoxDecoration(color: colour, borderRadius: BorderRadius.circular(10)),
    );
  }
}
