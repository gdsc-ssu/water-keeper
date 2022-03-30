import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:savewater_gdsc_sl/Screens/Home/components/body.dart';
import 'package:savewater_gdsc_sl/Screens/Home/components/my_bottom_navigator.dart';
import 'package:savewater_gdsc_sl/Screens/details/details_screen.dart';
import 'package:savewater_gdsc_sl/constants.dart';

class HomeScreen extends StatelessWidget {
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
      //bottomNavigationBar: MyBottomNavigator(),
    );
  }
}

//   AppBar buildAppbar() {
//     return AppBar(
//       backgroundColor: kPrimaryColor,
//       elevation: 0,
//       leading: IconButton(icon: SvgPicture.asset("assets/icons/menu.svg"),
//       onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => DetailsScreen(),
//             ),
//           );
//         },
//       } ,
//       ),
//     );
//   }
// }

