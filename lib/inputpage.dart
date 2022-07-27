// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'ReusableCard.dart';

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
