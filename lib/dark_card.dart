import 'package:flutter/material.dart';

class DarkCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final Function onPressed;

  const DarkCard({
    @required this.color,
    this.cardChild,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: this.cardChild,
      ),
    );
  }
}
