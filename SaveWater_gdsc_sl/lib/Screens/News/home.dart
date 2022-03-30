import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:savewater_gdsc_sl/Screens/News/components/categorySelector.dart';
import 'package:savewater_gdsc_sl/Screens/News/components/newsCarousel.dart';
import 'package:savewater_gdsc_sl/Screens/News/components/tiledNewsView.dart';
import 'package:savewater_gdsc_sl/Screens/News/components/welcomeWidget.dart';
import 'package:savewater_gdsc_sl/Screens/details/details_screen.dart';
import 'package:savewater_gdsc_sl/constants.dart';
import 'components/topbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        leading: IconButton(icon: SvgPicture.asset("assets/icons/menu.svg"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailsScreen(),
              ),
            );
          },
        ),
      ),
      body: SafeArea(
        child: Container(
            width: size.width,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        WelcomeWidget(),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  NewsCarousel(),
                  SizedBox(
                    height: 15,
                  ),
                  CategorySelector(),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [TiledNewsView()],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }

  // AppBar buildAppbar() {
  //   return AppBar(
  //     backgroundColor: kPrimaryColor,
  //     elevation: 0,
  //     leading: IconButton(icon: SvgPicture.asset("assets/icons/menu.svg"),
  //       onPressed: () {} ,
  //     ),
  //   );
  // }
}
