import 'package:bmi_calculator/bmi_database.dart';
import 'package:bmi_calculator/components/bottom_red_container_widget.dart';
import 'package:bmi_calculator/screens/result_page.dart';
import 'package:bmi_calculator/components/reusable_card_widget.dart';
import 'package:bmi_calculator/components/round_icon_button_widget.dart';
import 'package:flutter/material.dart';
import '../components/icon_content_widget.dart';
import '../constants.dart';


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}


class _InputPageState extends State<InputPage> {

  Gender gender;
  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ИМТ КАЛЬКУЛЯТОР'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: gender == Gender.male ? kActiveCardColor : kInactiveCardColor,
                    child: IconContent(
                      icon: kMaleIcon,
                      label: 'МУЖЧИНА',
                    ),
                    onPressed: () {
                      setState(() {
                        gender = Gender.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: gender == Gender.female ? kActiveCardColor : kInactiveCardColor,
                    child: IconContent(
                      icon: kFemaleIcon,
                      label: 'ЖЕНЩИНА',
                    ),
                    onPressed: () {
                      setState(() {
                        gender = Gender.female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'РОСТ',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'см',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: kLightGreyColor,
                      inactiveTrackColor: kLightGreyColor,
                      thumbColor: kAccentColor,
                      overlayColor: kAccentColor.withOpacity(0.26),
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15.0,
                      ),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 30.0,
                      ),
                    ),
                    child: Slider(
                      min: 120.0,
                      max: 220.0,
                      value: height.toDouble(),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'ВЕС',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: Icons.remove,
                              onPressed: () {
                                setState(() {
                                  weight -= 1;
                                });
                              },
                            ),
                            SizedBox(width: 15.0),
                            RoundIconButton(
                              icon: Icons.add,
                              onPressed: () {
                                setState(() {
                                  weight += 1;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'ВОЗРАСТ',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: Icons.remove,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(width: 15.0),
                            RoundIconButton(
                              icon: Icons.add,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomRedContainer(
            title: 'рассчитать',
            onPressed: () {
              BmiDatabase bmi = BmiDatabase(height: height, weight: weight);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    bmi: bmi.bmiCalculate(),
                    result: bmi.getResult(),
                    interpretation: bmi.getInterpretation(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}







