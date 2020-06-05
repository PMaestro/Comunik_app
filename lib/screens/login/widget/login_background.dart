import 'package:comunik/util/constants.dart';
import 'package:flutter/material.dart';

class LoginBackground extends StatelessWidget {
  final Widget child;

  const LoginBackground({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      color: kPrimaryLightColor,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 20,
            child: Image.asset(
              "images/deepPurple-Communication-Icon.png",
              width: size.width * 0.4,
            ),
          ),
          Positioned(
            top: 160,
            child: child,
          ),
        ],
      ),
    );
  }
}
