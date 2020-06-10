import 'package:comunik/util/constants.dart';
import 'package:flutter/material.dart';

class OrDivided extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: size.width * 0.8,
      child: Row(
        children: <Widget>[
          buildExpanded(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Or",
              style: TextStyle(
                color: kPrimaryCustomColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          buildExpanded(),
        ],
      ),
    );
  }

  Expanded buildExpanded() {
    return Expanded(
      child: Divider(
        color: kPrimaryCustomColor,
        height: 1.5,
      ),
    );
  }
}
