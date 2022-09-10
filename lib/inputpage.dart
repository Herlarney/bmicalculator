// ignore_for_file: prefer_const_constructors, duplicate_ignore, unused_import, prefer_const_literals_to_create_immutables, avoid_print
import 'package:bmicalculator/roundiconbutton.dart';
import 'package:flutter/material.dart';
import 'iconcontent.dart';
import 'ReusableCard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

enum Card {
  malecard,
  femalecard,
}

class BMICaculator extends StatefulWidget {
  const BMICaculator({Key? key}) : super(key: key);

  @override
  State<BMICaculator> createState() => _BMICaculatorState();
}

class _BMICaculatorState extends State<BMICaculator> {
  Card? pressedcard;
  int height = 180;
  int weight = 60;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF0A0E21),
          // ignore: prefer_const_constructors
          title: Text('BMICalculator'),
        ),
        body: Container(
          // ignore: prefer_const_constructors
          margin: EdgeInsets.all(15),
          child: Column(children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        pressedcard = Card.malecard;
                      });
                    },
                    child: ReusableCard(
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'Male',
                      ),
                      color: pressedcard == Card.malecard
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      width: 180,
                    ),
                  )),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          pressedcard = Card.femalecard;
                        });
                      },
                      child: ReusableCard(
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.venus,
                          label: 'Female',
                        ),
                        color: pressedcard == Card.femalecard
                            ? kActiveCardColor
                            : kInactiveCardColor,
                        width: 180,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                // ignore: prefer_const_constructors
                color: kActiveCardColor,
                width: double.infinity,
                height: 150,
                cardChild: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'HEIGHT',
                        style: kLabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(height.toString(), style: kNumberStyle),
                          Text('cm', style: kLabelTextStyle),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.white,
                            thumbColor: Color(0x0FFEB1555),
                            overlayColor: Color(0x0FFEB1555),
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 15.0),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 28)),
                        child: Slider(
                            value: height.toDouble(),
                            min: 120.0,
                            max: 220.0,
                            inactiveColor: Color(0xFF8D8E98),
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue.round();
                              });
                            }),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                      cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Weight', style: kLabelTextStyle),
                            Text(
                              weight.toString(),
                              style: kNumberStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RoundIconButton(),
                                SizedBox(
                                  width: 5.0,
                                ),
                                RoundIconButton(),
                              ],
                            )
                          ]),
                      color: kActiveCardColor,
                      width: 180),
                ),
                Expanded(
                  child: ReusableCard(
                    color: kActiveCardColor,
                    width: 180,
                  ),
                ),
              ],
            ),
            Container(
              height: 80,
              width: double.infinity,
              color: Color(0x0FFEB1555),
            )
          ]),
        ),
        backgroundColor: const Color(0xFF0A0E21),
      ),
    );
  }
}
