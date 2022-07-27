// ignore_for_file: use_full_hex_values_for_flutter_colors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconContent extends StatelessWidget {
  IconContent({this.label, this.icon});
  final String? label;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 50,
          color: Color(0x0FFF8D8E98),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          label!,
          style: TextStyle(fontSize: 15, color: Color(0x0FFF8D8E98)),
        )
      ],
    );
  }
}
