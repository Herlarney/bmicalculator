import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({
    this.icon,
  });
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: () {},
      constraints: BoxConstraints.tightFor(height: 56.0, width: 56.0),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
