import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  ReusableCard({
    this.color,
    this.width,
    this.height,
  });
  final Color? color;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: width,
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
    );
  }
}
