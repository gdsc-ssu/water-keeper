import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:savewater_gdsc_sl/Screens/Main/components/body.dart';
import 'package:savewater_gdsc_sl/Screens/details/details_screen.dart';
import 'package:savewater_gdsc_sl/constants.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
      body: Body(),
    );
  }
}
//   AppBar buildAppBar() {
//     return AppBar(
//       elevation: 0,
//       backgroundColor: kPrimaryColor,
//       leading: IconButton(
//         icon: SvgPicture.asset("assets/icons/menu.svg"),
//         onPressed: () {},
//       ),
//     );
//   }
// }


