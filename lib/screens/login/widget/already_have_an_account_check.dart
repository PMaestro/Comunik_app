import 'package:comunik/util/constants.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(login ? "Não tem uma conta ?" : "Já possui conta?",
            style: TextStyle(
              color: kPrimaryCustomColor,
            )),
        SizedBox(
          width: size.width * 0.02,
        ),
        GestureDetector(
          onTap: () {},
          child: Text(login ? "Inscrever-se" : "Faça log in",
              style: TextStyle(
                color: kPrimaryCustomColor,
                fontWeight: FontWeight.bold,
              )),
        )
      ],
    );
  }
}
