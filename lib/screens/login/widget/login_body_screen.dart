import 'package:comunik/screens/login/widget/login_background.dart';
import 'package:comunik/screens/login/widget/login_form.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: LoginBackground(
        child: LoginForm(),
      ),
    );
  }
}
