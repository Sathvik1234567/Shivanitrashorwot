import 'package:flutter/material.dart';
import 'Bmiconstants.dart';

class iconContent extends StatelessWidget {
  final IconData icon;
  final String label;

  iconContent({this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 85.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          label,
          style: kLabelstyle,
        ),
      ],
    );
  }
}