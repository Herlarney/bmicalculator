// ignore_for_file: prefer_const_constructors, duplicate_ignore, unused_import, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'iconcontent.dart';
import 'ReusableCard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BMICaculator extends StatelessWidget {
  const BMICaculator({Key? key}) : super(key: key);

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
                  color: Color(0xFF1D1E33),
                  width: 180,
                )),
                Expanded(
                  child: ReusableCard(
                    // ignore: prefer_const_constructors
                    color: Color(0xFF1D1E33),
                    width: 180,
                  ),
                ),
              ],
            ),
            Expanded(
                child: ReusableCard(
              // ignore: prefer_const_constructors
              color: Color(0xFF1D1E33),
              width: double.infinity,
              height: double.infinity,
            )),
            Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(color: Color(0xFF1D1E33), width: 180)),
                Expanded(
                    child: ReusableCard(
                  color: Color(0xFF1D1E33),
                  width: 180,
                )),
              ],
            ),
            Container(
              height: 80,
              width: double.infinity,
              color: Color(0x0FFD1555),
            )
          ]),
        ),
        backgroundColor: const Color(0xFF0A0E21),
      ),
    );
  }
}
