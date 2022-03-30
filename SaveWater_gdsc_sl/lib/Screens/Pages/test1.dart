import 'package:flutter/material.dart';
import 'package:savewater_gdsc_sl/constants.dart';

class Test1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/badge.jpg'),
            fit: BoxFit.cover
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //SizedBox(height: size.height * 0.01),
            DefaultTextStyle(
              style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Lobster', fontSize: 60, color: kPrimaryColor),
              child: Text("Badge"),
            ),
          ],
        ),
      ),
    );
  }
}
