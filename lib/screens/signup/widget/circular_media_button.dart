import 'package:comunik/util/constants.dart';
import 'package:flutter/material.dart';

class CircularMediaButton extends StatelessWidget {
  final String iconSrc;
  final Function press;
  final double height;
  final double width;
  const CircularMediaButton({
    Key key,
    this.iconSrc,
    this.press,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          border: Border.all(),
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          iconSrc,
          color: kPrimaryCustomColor,
          height: height,
          width: width,
        ),
      ),
    );
  }
}
