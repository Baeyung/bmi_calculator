import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'customWidgets/IconContent.dart';
import 'customWidgets/ReusableCard.dart';

const double calculateButtonHeight = 80;
const Color bgcWidget = Color(0xff1a1e33);

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
                  child: ReusableCard(
                    colour: bgcWidget,
                    cardChild: TopWidgets(
                      widgetIcons: FontAwesomeIcons.mars,
                      str: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: bgcWidget,
                    cardChild: TopWidgets(
                      widgetIcons: FontAwesomeIcons.venus,
                      str: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ReusableCard(colour: bgcWidget),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ReusableCard(colour: bgcWidget),
                ),
                Expanded(
                  child: ReusableCard(colour: bgcWidget),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: calculateButtonHeight,
            margin: const EdgeInsets.only(
              top: 10,
              bottom: 10,
            ),
            decoration: BoxDecoration(
              color: const Color(0xffeb1555),
              borderRadius: BorderRadius.circular(10),
            ),
          )
        ],
      ),
    );
  }
}
