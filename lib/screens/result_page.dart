import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/bottom_red_container_widget.dart';


class ResultPage extends StatelessWidget {

  final String bmi;
  final String result;
  final String interpretation;

  ResultPage({
    @required this.bmi,
    @required this.result,
    @required this.interpretation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ИМТ КАЛЬКУЛЯТОР'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Ваш результат',
              style: TextStyle(
                fontSize: 38.0,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    result.toUpperCase(),
                    style: TextStyle(
                      color: kGreenColor,
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    bmi,
                    style: TextStyle(
                      fontSize: 100.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomRedContainer(
            title: 'пересчитать',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
