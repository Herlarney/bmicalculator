// ignore_for_file: prefer_const_constructors, duplicate_ignore, unused_import, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'iconcontent.dart';
import 'ReusableCard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);

class BMICaculator extends StatefulWidget {
  const BMICaculator({Key? key}) : super(key: key);

  @override
  State<BMICaculator> createState() => _BMICaculatorState();
}

class _BMICaculatorState extends State<BMICaculator> {
  Color maleCardColor = inactiveCardColor;
  Color femalecardColor = inactiveCardColor;
  //1=male 2=female
  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    }
  }

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
            Row(
              children: <Widget>[
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(1);
                    });
                  },
                  child: ReusableCard(
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'Male',
                    ),
                    // ignore: prefer_const_constructors
                    color: maleCardColor,
                    width: 180,
                  ),
                )),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print('female button got pressed');
                    },
                    child: ReusableCard(
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'Female',
                      ),
                      color: femalecardColor,
                      width: 180,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
                child: ReusableCard(
              // ignore: prefer_const_constructors
              color: activeCardColor,
              width: double.infinity,
              height: double.infinity,
            )),
            Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(color: activeCardColor, width: 180)),
                Expanded(
                    child: ReusableCard(
                  color: activeCardColor,
                  width: 180,
                )),
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
