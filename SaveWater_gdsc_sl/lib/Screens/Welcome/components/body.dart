import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:savewater_gdsc_sl/Screens/Login/login_screen.dart';
import 'package:savewater_gdsc_sl/Screens/Welcome/components/background.dart';
import 'package:savewater_gdsc_sl/constants.dart';
import 'package:savewater_gdsc_sl/components/rounded_button.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             SizedBox(height: size.height * 0.52),
            // SvgPicture.asset(
            //   "assets/icons/chat.svg",
            //   height: size.height * 0.45,
            // ),
            Text(
              "Water Keeper",
              style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Lobster', fontSize: 40, color: kPrimaryColor),
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "SIGNUP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {},
            ),
            SizedBox(height: size.height * 0.05),
            Image.asset('assets/gif/water.gif'),
          ],
        ),
      ),
    );
  }
}


