import 'package:comunik/screens/login/widget/login_body_screen.dart';
import 'package:comunik/util/constants.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryCustomColor,
      ),
      body: LoginBody(),
    );
  }
}
