import 'package:bmi_calculator/constants/konstants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './input_page.dart';

void main() {
  runApp(const BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0B0D22),
        scaffoldBackgroundColor: const Color(0xFF0B0D22),
        sliderTheme: SliderTheme.of(context).copyWith(
          activeTrackColor: kActiveSliderColor,
          inactiveTrackColor: kInactiveSliderColor,
          thumbColor: kThumbColorSlider,
          overlayColor: kThumbElevationColor,
        ),
        appBarTheme: const AppBarTheme(
          color: kAppBarColor,
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle(
            systemNavigationBarColor: kAppBarColor,
          ),
        ),
      ),
      home: const InputPage(),
    );
  }
}
