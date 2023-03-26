import 'package:flutter/material.dart';
// import 'constants.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.keyColour, this.cardChild, this.onPress});

  final Color keyColour;
  final Widget? cardChild; //? => nullable
  final void Function()? onPress;  //

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: keyColour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,


        ),
      );
  }
}