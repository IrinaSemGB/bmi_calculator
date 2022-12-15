import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color kAccentColor = Color(0xFFEB1555);
const Color kLightGreyColor = Color(0xFF8D8E98);
const Color kActiveCardColor = Color(0xFF1D1E33);
const Color kInactiveCardColor = Color(0xFF111328);
const Color kRoundButtonColor = Color(0xFF4C4F5E);
const Color kGreenColor = Color(0xFF24D876);

const IconData kMaleIcon = FontAwesomeIcons.mars;
const IconData kFemaleIcon = FontAwesomeIcons.venus;

const double kBottomContainerHeight = 80.0;

enum Gender {
  male,
  female
}

const TextStyle kLabelTextStyle = TextStyle(
  color: kLightGreyColor,
  fontSize: 18.0,
);

const TextStyle kNumberTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);