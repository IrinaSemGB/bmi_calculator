import 'package:flutter/material.dart';

import '../constants.dart';

class RoundIconButton extends StatelessWidget {

  final IconData icon;
  final Function onPressed;

  RoundIconButton({
    @required this.icon,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: kRoundButtonColor,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      onPressed: onPressed,
      child: Icon(
        icon,
        size: 30.0,
      ),
    );
  }
}