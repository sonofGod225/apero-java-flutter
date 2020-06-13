import 'package:eduprepa/screens/login/login_screen.dart';
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
              'assets/images/signup_top.png',
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
              Text(
                "INSCRIPTION",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              SvgPicture.asset('assets/icons/signup.svg'),
              rounded_inputfield(
                hintText: 'Votre adresse mail',
                onchanged: (value) {},
              ),
              rounded_passwordfield(
                hintText: 'Votre mot de passe',
                onchanged: (value) {},
              ),
              rounded_button(
                press: () {},
                text: 'S\'INSCRIRE',
              ),
              check_have_account(
                login: false,
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }));
                },
              ),
              orDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20.0),
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.grey),
                        shape: BoxShape.circle),
                    child: SvgPicture.asset(
                      'assets/icons/facebook.svg',
                      height: 20,
                      width: 20,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.grey),
                        shape: BoxShape.circle),
                    child: SvgPicture.asset(
                      'assets/icons/twitter.svg',
                      height: 20,
                      width: 20,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.grey),
                        shape: BoxShape.circle),
                    child: SvgPicture.asset(
                      'assets/icons/google-plus.svg',
                      height: 20,
                      width: 20,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class orDivider extends StatelessWidget {
  const orDivider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: size.width * 0.8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Divider(
              height: 1.5,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text('OR'),
          ),
          Expanded(
            child: Divider(
              height: 1.5,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
