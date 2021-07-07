import 'package:flutter/material.dart';

class recode extends StatelessWidget {
  final Color colours;
  final Widget cardChild;
  final Function onPressed;

  recode({@required this.colours, this.cardChild,this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colours,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}