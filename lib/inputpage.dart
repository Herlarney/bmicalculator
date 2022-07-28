// ignore_for_file: prefer_const_constructors, duplicate_ignore, unused_import, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'iconcontent.dart';
import 'ReusableCard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activecardColor = Color(0xFF1D1E33);
const inactivecardColor = Color(0x0FF111328);

class BMICaculator extends StatefulWidget {
  const BMICaculator({Key? key}) : super(key: key);

  @override
  State<BMICaculator> createState() => _BMICaculatorState();
}

class _BMICaculatorState extends State<BMICaculator> {
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
                    child: ReusableCard(
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.mars,
                    label: 'Male',
                  ),
                  // ignore: prefer_const_constructors
                  color: activecardColor,
                  width: 180,
                )),
                Expanded(
                  child: ReusableCard(
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'Female',
                    ),
                    color: activecardColor,
                    width: 180,
                  ),
                ),
              ],
            ),
            Expanded(
                child: ReusableCard(
              // ignore: prefer_const_constructors
              color: activecardColor,
              width: double.infinity,
              height: double.infinity,
            )),
            Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(color: activecardColor, width: 180)),
                Expanded(
                    child: ReusableCard(
                  color: activecardColor,
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
