import 'package:flutter/material.dart';

class SingupBackground extends StatelessWidget {
  const SingupBackground({
    Key key,
    @required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 150,
            child: child,
          )
        ],
      ),
    );
  }
}
