import 'package:flutter/material.dart';

import '../../constants.dart';

class rounded_inputfield extends StatelessWidget {
  final IconData icon;
  final Function onchanged;
  final String hintText;

  const rounded_inputfield({
    Key key,
    this.icon = Icons.person,
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
        decoration: InputDecoration(
            border: InputBorder.none,
            icon: Icon(
              icon,
              color: kPrimaryColor,
            ),
            hintText: 'Votre adresse mail'),
      ),
    );
  }
}
