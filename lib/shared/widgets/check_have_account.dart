import 'package:flutter/material.dart';

import '../../constants.dart';

class check_have_account extends StatelessWidget {
  final bool login;
  final Function press;

  const check_have_account({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Vous n'avez pas de compte ? " : "Vous avez un compre ?",
          style: TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "S'inscrire" : "Se connecter",
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
