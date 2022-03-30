import 'package:flutter/material.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Save Water",
            style: TextStyle(fontSize: 30, fontFamily: 'Lobster'),
          ),
          Text("The world with water.", style: TextStyle(fontFamily: 'Lobster'))
        ],
      ),
    );
  }
}
