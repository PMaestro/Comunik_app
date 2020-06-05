import 'package:comunik/screens/login_and_signup/widget/login_singup_screen_body.dart';
import 'package:flutter/material.dart';

class LoginSingupScrenn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: LoginSingupScreenBody(),
    );
  }
}
