import 'package:eduprepa/constants.dart';
import 'package:eduprepa/screens/login/login_screen.dart';
import 'package:eduprepa/shared/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              'assets/images/main_top.png',
              width: size.width * 0.3,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              'assets/images/main_bottom.png',
              width: size.width * 0.2,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: size.height * 0.05),
              Text(
                "BIENVENUE DANS GEBEYA LEARNING",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.05),
              SvgPicture.asset('assets/icons/chat.svg'),
              SizedBox(height: size.height * 0.05),
              rounded_button(
                text: "CONNEXION",
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }));
                },
              ),
              rounded_button(
                text: "INSCRIPTION",
                press: () {},
                color: kPrimaryLightColor,
                textColor: Colors.black,
              ),
            ],
          )
        ],
      ),
    );
  }
}
