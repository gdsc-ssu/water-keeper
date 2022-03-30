import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:savewater_gdsc_sl/Screens/Home/home_screen.dart';
import 'package:savewater_gdsc_sl/Screens/Login/login_screen.dart';
import 'package:savewater_gdsc_sl/Screens/Pages/test1.dart';
import 'package:savewater_gdsc_sl/Screens/Pages/test2.dart';
import 'package:savewater_gdsc_sl/Screens/Pages/test4.dart';
import '../../../constants.dart';
import '../../Pages/test3.dart';

class IconCard extends StatelessWidget {
  final int index;
  const IconCard({
    Key? key,
    required this.icon,
    required this.index,
  }) : super(key: key);

  final String icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => (index == 1) ? Test1() :
                                                  (index == 2) ? Test2() :
                                                  (index == 3) ? Test3() : Test4(),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
        padding: EdgeInsets.all(kDefaultPadding / 2),
        height: 62,
        width: 62,
        decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 15),
              blurRadius: 22,
              color: kPrimaryColor.withOpacity(0.22),
            ),
            BoxShadow(
              offset: Offset(-15, -15),
              blurRadius: 20,
              color: Colors.white,
            ),
          ],
        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
