import 'package:flutter/material.dart';
import 'package:savewater_gdsc_sl/constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;
  final count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 36 + kDefaultPadding,
            ),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: <Widget>[
                Text(
                  "Fill Water!",
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold, fontFamily: 'Lobster'),
                ),
                Spacer(),
                count % 4 == 0 ? Image.asset("assets/images/logo.png") :
                count % 4 == 1 ? Image.asset("assets/images/waterdrop.png") :
                count % 4 == 2 ? Image.asset("assets/images/logo.png") :
                count % 4 == 3 ? Image.asset("assets/images/logo.png") :
                Image.asset("assets/images/logo.png"),
              ],
            ),
          )
        ],
      )
      ,);
  }
}