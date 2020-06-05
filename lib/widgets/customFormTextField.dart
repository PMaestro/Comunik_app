import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final Color boxColor;
  final Color textColor;
  final String hintText;
  final int fontSize;
  final Icon icon;
  final Icon suffixIcon;
  final TextInputType inputType;
  final bool protectedPassword;

  const CustomTextField({
    Key key,
    this.boxColor,
    this.textColor,
    this.hintText,
    this.fontSize,
    this.icon,
    this.inputType,
    this.protectedPassword,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      width: size.width * 0.8,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextFormField(
        keyboardType: inputType,
        obscureText: protectedPassword,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          hintStyle: TextStyle(color: textColor, fontSize: 16),
          icon: icon,
          suffixIcon: suffixIcon,
          contentPadding: EdgeInsets.all(20),
        ),
      ),
    );
  }
}
