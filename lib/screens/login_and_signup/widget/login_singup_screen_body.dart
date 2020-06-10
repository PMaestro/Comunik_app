import 'package:comunik/bloc/login/login_bloc.dart';
import 'package:comunik/screens/login/login_screen.dart';
import 'package:comunik/screens/login_and_signup/widget/background_login_singup.dart';
import 'package:comunik/screens/signup/singup_screen.dart';
import 'package:comunik/util/constants.dart';
import 'package:comunik/widgets/rounded_flat_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginSingupScreenBody extends StatelessWidget {
  const LoginSingupScreenBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginBloc _loginBloc = Provider.of<LoginBloc>(context);

    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black87,
      body: BackGroundLoginSing(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: size.height * 0.1,
              ),
              RoundedFlatButton(
                text: "LOGIN",
                color: kPrimaryColor,
                textColor: Colors.white,
                circularRadius: 29,
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                },
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              RoundedFlatButton(
                text: "SING UP",
                color: Colors.grey,
                textColor: Colors.black,
                circularRadius: 29,
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SingupScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
