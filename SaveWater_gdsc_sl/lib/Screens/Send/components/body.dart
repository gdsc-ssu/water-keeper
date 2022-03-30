import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:savewater_gdsc_sl/Screens/Login/login_screen.dart';
import 'package:savewater_gdsc_sl/Screens/Send/components/background.dart';
import 'package:savewater_gdsc_sl/constants.dart';
import 'package:savewater_gdsc_sl/components/rounded_button.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Send Water with",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20, height: 1,
              ),
            ),
            Image.asset(
              "assets/images/googlesl.png",
              height: size.height * 0.15,
              width: size.width * 0.6,
            ),
            Image.asset(
              "assets/images/worldmap.png",
              height: size.height * 0.3,
              width: size.width * 0.95,
            ),
            SizedBox(height: size.height * 0.06),
            RoundedButton(
              text: "Send Water!",
              press: () {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext ctx) {
                    return AlertDialog(
                    content: Text("Sending 3 Bottled Water"),
                      actions: [
                        FlatButton(
                          onPressed: () {Navigator.of(context).pop();},
                          child: Text("Done"),
                          color: kPrimaryColor,
                          textColor: Colors.white,
                        ),
                      ],
                    );
                  }
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}


