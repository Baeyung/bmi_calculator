import 'package:flutter/material.dart';

const double kCalculateButtonHeight = 80;
const Color kActiveCardColor = Color(0xff1a1e33);
const Color kInactiveCardColor = Color(0xff111328);
const Color kActiveSliderColor = Color(0xffffffff);
const Color kInactiveSliderColor = Color(0xff8d8e98);
const Color kThumbColorSlider = Color(0xffeb1555);
const Color kThumbElevationColor = Color(0xebeb1555);
const Color kBottomBarColor = Color(0xffeb1555);
const Color kAppBarColor = Color(0xff0B0D22);

const BoxConstraints kSizeConstraints = BoxConstraints.tightFor(
  width: 56.0,
  height: 56.0,
);

const double kMinHeight = 100.0;
const double kMaxHeight = 250.0;

const kTextStyle = TextStyle(
  color: Color(0xff8d8e98),
  fontSize: 18,
);
const kNumberTextStyle = TextStyle(
  fontWeight: FontWeight.w900,
  fontSize: 50,
);
const kBigTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 80,
);
const kResultTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.green,
  fontSize: 25,
);
const kResultCommentTextStyle = TextStyle(
  //fontWeight: FontWeight.bold,
  fontSize: 25,
);
const kButtonTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 25,
);
const kResultTitleTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 50,
);
BoxDecoration kContainerDecoration = BoxDecoration(
  color: kActiveCardColor,
  borderRadius: BorderRadius.circular(10),
);
