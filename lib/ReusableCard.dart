// ignore_for_file: use_key_in_widget_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  ReusableCard({
    this.color,
    this.width,
    this.cardChild,
  });
  final Color? color;
  final double? width;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      height: 160,
      width: width,
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
    );
  }
}
