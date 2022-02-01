import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'customWidgets/IconContent.dart';
import 'customWidgets/ReusableCard.dart';

const double calculateButtonHeight = 80;
const Color activeCardColor = Color(0xff1a1e33);
const Color inactiveCardColor = Color(0xff111328);
enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void changeColor(Gender gender) {
    if (gender == Gender.male) {
      if (maleCardColor == activeCardColor) {
        maleCardColor = inactiveCardColor;
      } else {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      }
    }
    if (gender == Gender.female) {
      if (femaleCardColor == activeCardColor) {
        femaleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      }
    }
  }

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
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        changeColor(Gender.male);
                      });
                    },
                    child: ReusableCard(
                      colour: maleCardColor,
                      cardChild: const TopWidgets(
                        widgetIcons: FontAwesomeIcons.mars,
                        str: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        changeColor(Gender.female);
                      });
                    },
                    child: ReusableCard(
                      colour: femaleCardColor,
                      cardChild: const TopWidgets(
                        widgetIcons: FontAwesomeIcons.venus,
                        str: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ReusableCard(colour: activeCardColor),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ReusableCard(colour: activeCardColor),
                ),
                Expanded(
                  child: ReusableCard(colour: activeCardColor),
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
