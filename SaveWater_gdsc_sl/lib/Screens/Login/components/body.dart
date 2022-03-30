import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:savewater_gdsc_sl/Screens/Login/components/already_have_an_account_check.dart';
import 'package:savewater_gdsc_sl/Screens/Login/components/background.dart';
import 'package:savewater_gdsc_sl/Screens/Login/components/with_divider.dart';
import 'package:savewater_gdsc_sl/components/rounded_button.dart';
import 'package:savewater_gdsc_sl/components/rounded_input_field.dart';
import 'package:savewater_gdsc_sl/components/rounded_password_field.dart';
import 'package:savewater_gdsc_sl/components/text_field_container.dart';
import 'package:savewater_gdsc_sl/constants.dart';
import 'package:savewater_gdsc_sl/main.dart';
import 'social_icon.dart';
import 'package:flutter_web_auth/flutter_web_auth.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String _status = '';

  void authenticate() async {
    final url = 'https://34.67.179.144:8080';
    final callbackUrlScheme = 'com.example.savewater_gdsc_sl';

    try {
      final result = await FlutterWebAuth.authenticate(url: url, callbackUrlScheme: callbackUrlScheme);
      setState(() { _status = 'Got result: $result'; });
    } on FirebaseException catch (e) {
      setState(() { _status = 'Got error: $e'; });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.48),
            // Text(
            //   "LOGIN",
            //   style: TextStyle(fontWeight: FontWeight.bold),
            // ),
            // SizedBox(height: size.height * 0.03),
            // SvgPicture.asset(
            //   "assets/icons/login.svg",
            //   height: size.height * 0.35,
            // ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainPage(),
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {},
            ),
            WithDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {
                    this.authenticate();
                    print("2");
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

