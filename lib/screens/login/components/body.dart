import 'package:eduprepa/constants.dart';
import 'package:eduprepa/screens/register/register_screen.dart';
import 'package:eduprepa/shared/widgets/check_have_account.dart';
import 'package:eduprepa/shared/widgets/rounded_button.dart';
import 'package:eduprepa/shared/widgets/rounded_passwordfield.dart';
import 'package:eduprepa/shared/widgets/rounded_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
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
            right: 0,
            child: Image.asset(
              'assets/images/login_bottom.png',
              width: size.width * 0.4,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'CONNEXION',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                SvgPicture.asset('assets/icons/login.svg'),
                SizedBox(
                  height: size.height * 0.05,
                ),
                rounded_inputfield(
                  hintText: 'Votre adresse mail',
                  onchanged: (value) {},
                ),
                rounded_passwordfield(
                  hintText: 'Mot de passe',
                  onchanged: (value) {},
                ),
                rounded_button(
                  text: 'CONNEXION',
                  press: () {},
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                check_have_account(
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return RegisterScreen();
                    }));
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
