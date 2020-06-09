import 'package:comunik/screens/login/widget/text_field_container.dart';
import 'package:comunik/util/constants.dart';
import 'package:flutter/material.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintStyle: TextStyle(
            color: kWhite,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          hintText: "senha",
          icon: Icon(
            Icons.lock,
            color: kWhite,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kWhite,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
