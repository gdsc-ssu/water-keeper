import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:savewater_gdsc_sl/Screens/Home/components/donate.dart';
import 'package:savewater_gdsc_sl/Screens/Home/components/featured_plants.dart';
import 'package:savewater_gdsc_sl/Screens/Home/components/header_with_searchbox.dart';
import 'package:savewater_gdsc_sl/Screens/Home/components/recomend_plants.dart';
import 'package:savewater_gdsc_sl/Screens/Home/components/title_with_more_btn.dart';
import 'package:savewater_gdsc_sl/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provide us total height and width of our screen
    Size size = MediaQuery.of(context).size;
    //It enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recommended",
            press: () {},
          ),
          RecommendsPlants(),
          TitleWithMoreBtn(
            title: "Thermos",
            press: () {}
          ),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
          TitleWithMoreBtn(
              title: "Donation",
              press: () {}
          ),
          Donate(),
          SizedBox(height: 80),
        ],
      ),
    );
  }
}




