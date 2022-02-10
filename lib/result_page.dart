import 'package:bmi_calculator/constants/konstants.dart';
import 'package:bmi_calculator/custom_widgets/bottom_button.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BMI Calculator')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Result',
                style: kResultTitleTextStyle,
                textAlign: TextAlign.start,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              decoration: kContainerDecoration,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Normal',
                    style: kResultTextStyle,
                  ),
                  Text(
                    '22.5',
                    style: kBigTextStyle,
                  ),
                  Text(
                    'you have a normal weight dont you worry',
                    style: kResultCommentTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: BottomButton(
                onTap: () {
                  Navigator.pop(context);
                },
                buttonText: 'RE-CALCULATE BMI'),
          ),
        ],
      ),
    );
  }
}
