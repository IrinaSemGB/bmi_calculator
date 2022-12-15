import 'package:bmi_calculator/constants.dart';
import 'package:flutter/cupertino.dart';

class ReusableCard extends StatelessWidget {

  final Color color;
  final Widget child;
  final Function onPressed;

  ReusableCard({
    this.color = kActiveCardColor,
    this.child,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: child,
      ),
    );
  }
}