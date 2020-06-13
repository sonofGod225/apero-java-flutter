import 'package:flutter/material.dart';

import '../../constants.dart';

class rounded_passwordfield extends StatelessWidget {
  final Function onchanged;
  final String hintText;

  const rounded_passwordfield({
    Key key,
    this.onchanged,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(29.0), color: kPrimaryLightColor),
      child: TextField(
        onChanged: onchanged,
        obscureText: true,
        decoration: InputDecoration(
            border: InputBorder.none,
            icon: Icon(
              Icons.lock,
              color: kPrimaryColor,
            ),
            suffixIcon: Icon(
              Icons.visibility,
              color: kPrimaryColor,
            ),
            hintText: hintText),
      ),
    );
  }
}
