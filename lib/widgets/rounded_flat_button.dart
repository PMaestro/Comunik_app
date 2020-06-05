import 'package:flutter/material.dart';

class RoundedFlatButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  final double circularRadius;

  const RoundedFlatButton({
    Key key,
    this.text,
    this.press,
    this.color,
    this.textColor,
    @required this.circularRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(circularRadius),
        child: FlatButton(
          color: color,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
