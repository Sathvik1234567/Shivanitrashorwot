import 'package:flutter/material.dart';
import 'Bmiconstants.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String text;

  BottomButton({@required this.text, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: knumStyle.copyWith(fontSize: 29.0),
          ),
        ),
        color: kbottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kcontainerHeight,
      ),
    );
  }
}