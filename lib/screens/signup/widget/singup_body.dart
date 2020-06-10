import 'package:comunik/screens/homescreen/home_screen.dart';
import 'package:comunik/screens/login/widget/already_have_an_account_check.dart';
import 'package:comunik/screens/login/widget/rounded_password_field.dart';
import 'package:comunik/screens/login/widget/rounded_text_field.dart';
import 'package:comunik/screens/signup/widget/circular_media_button.dart';
import 'package:comunik/screens/signup/widget/or_divider.dart';
import 'package:comunik/screens/signup/widget/singup_background.dart';
import 'package:comunik/util/constants.dart';
import 'package:comunik/widgets/rounded_flat_button.dart';
import 'package:flutter/material.dart';

class SingupBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingupBackground(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Inscrever-se",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        SizedBox(
          height: size.height * 0.05,
        ),
        RoundedInputField(
          icon: Icons.person,
          hintText: "E-mail para cadastro",
          onChanged: (value) {},
        ),
        RoundedPasswordField(
          onChanged: (value) {},
        ),
        SizedBox(
          height: size.height * 0.035,
        ),
        RoundedFlatButton(
          color: kPrimaryCustomColor,
          textColor: Colors.white,
          circularRadius: 10,
          text: "Inscrever-se",
          press: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
        ),
        SizedBox(
          height: size.height * 0.035,
        ),
        AlreadyHaveAnAccountCheck(
          press: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          login: true,
        ),
        OrDivided(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircularMediaButton(
              height: 60,
              width: 60,
              iconSrc: "images/facebook.png",
              press: () {},
            ),
            CircularMediaButton(
              height: 60,
              width: 60,
              iconSrc: "images/google_small.png",
              press: () {},
            ),
            CircularMediaButton(
              height: 60,
              width: 60,
              iconSrc: "images/twitter.png",
              press: () {},
            ),
          ],
        ),
      ],
    ));
  }
}
