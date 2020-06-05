import 'package:comunik/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class BackGroundLoginSing extends StatelessWidget {
  final Widget child;

  const BackGroundLoginSing({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      color: Color.fromRGBO(23, 3, 58, 0),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "images/background_stretched.jpg",
              width: size.width,
            ),
          ),
          Positioned(
            top: 135,
            child: Container(),
          ),
          Positioned(
            top: 175,
            child: Container(
              padding: EdgeInsets.all(32),
              //color: kPrimaryLightColor,
              width: size.width,
              height: size.height * 0.69,
              decoration: BoxDecoration(
                color: kPrimaryLightColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(60),
                ),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Text(
                    'Entrar',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  child,
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
