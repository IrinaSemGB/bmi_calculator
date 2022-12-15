import 'package:flutter/cupertino.dart';
import '../constants.dart';

class BottomRedContainer extends StatelessWidget {

  final String title;
  final Function onPressed;

  BottomRedContainer({
    @required this.title,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        color: kAccentColor,
        height: kBottomContainerHeight,
        width: double.infinity,
        child: Center(
          child: Text(
            title.toUpperCase(),
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}