import 'package:comunik/screens/homescreen/home_screen.dart';
import 'package:comunik/util/constants.dart';
import 'package:comunik/util/global_keys.dart';
import 'package:comunik/widgets/customFormTextField.dart';
import 'package:comunik/widgets/rounded_flat_button.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Form(
        key: GlobalKeys.loginScreenFormKey,
        child: Column(
          children: <Widget>[
            Text(
              'Login',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black45,
              ),
            ),
            SizedBox(
              height: size.height * 0.06,
            ),
            CustomTextField(
              inputType: TextInputType.emailAddress,
              protectedPassword: false,
              boxColor: kPrimaryColor,
              textColor: Colors.white,
              fontSize: 16,
              hintText: "Insira o seu e-mail",
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
            CustomTextField(
              inputType: TextInputType.text,
              protectedPassword: true,
              boxColor: kPrimaryColor,
              textColor: Colors.white,
              fontSize: 16,
              hintText: "Senha",
              icon: Icon(Icons.lock, color: Colors.white),
              suffixIcon: Icon(Icons.visibility, color: Colors.white),
            ),
            RoundedFlatButton(
              color: kPrimaryCustomColor,
              textColor: Colors.white,
              circularRadius: 10,
              text: "Log in",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
