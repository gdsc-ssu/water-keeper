import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:savewater_gdsc_sl/Screens/Main/components/header.dart';
import 'package:savewater_gdsc_sl/Screens/Quest/quest_screen.dart';
import 'package:savewater_gdsc_sl/Screens/Send/send_screen.dart';
import 'package:savewater_gdsc_sl/constants.dart';
import '../../Pages/test5.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int count = 0;
  int pet = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Header(size: size),
          //SizedBox(height: size.height * 0.01),
          InkWell(
            child: count % 4 == 0 && count ~/ 4 == 0 ? Text("$pet bottles", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, fontFamily: 'Lobster', color: kPrimaryColor)) :
            count % 4 == 1 ? Text("$pet bottles", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, fontFamily: 'Lobster', color: kPrimaryColor)) :
            count % 4 == 2 ? Text("$pet bottles", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, fontFamily: 'Lobster', color: kPrimaryColor)) :
            count % 4 == 3 ? Text("$pet bottles", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, fontFamily: 'Lobster', color: kPrimaryColor)) :
            Text("$pet bottles", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, fontFamily: 'Lobster', color: kPrimaryColor))
          ),
          //SizedBox(height: size.height * 0.01),
          GestureDetector(
            onTap: () {
              print(count);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SendScreen(),
                ),
              );
            },
            child:
            count % 4 == 0 && count ~/ 4 == 0 ? Image.asset("assets/gif/watergif0.gif", width: 350, height: 350,) :
            count % 4 == 1 ? Image.asset("assets/gif/watergif25.gif", width: 350, height: 350,) :
            count % 4 == 2 ? Image.asset("assets/gif/watergif50.gif", width: 350, height: 350,) :
            count % 4 == 3 ? Image.asset("assets/gif/watergif75.gif", width: 350, height: 350,) :
            Image.asset("assets/gif/watergif100.gif", width: 350, height: 350,),
          ),
          //SizedBox(height: size.height * 0.01),
          InkWell(
            child: count % 4 == 0 && count ~/ 4 == 0 ? Text("0ml", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, fontFamily: 'Lobster', color: kPrimaryColor)) :
            count % 4 == 1 ? Text("250ml", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, fontFamily: 'Lobster', color: kPrimaryColor)) :
            count % 4 == 2 ? Text("500ml", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, fontFamily: 'Lobster', color: kPrimaryColor)) :
            count % 4 == 3 ? Text("750ml", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, fontFamily: 'Lobster', color: kPrimaryColor)) :
            Text("1L!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, fontFamily: 'Lobster', color: kPrimaryColor)),
            onTap: () {
              setState(() {
                count++;
                pet = count ~/ 4;
              });
              print(count);
            },
          ),
        ],
      ),
    );
  }
}


