import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:savewater_gdsc_sl/Screens/Main/components/header.dart';
import 'package:savewater_gdsc_sl/Screens/Quest/data/data.dart';
import 'package:savewater_gdsc_sl/Screens/Quest/widgets/quest_card.dart';
import 'package:savewater_gdsc_sl/Screens/Quest/widgets/take_picture.dart';
import 'package:savewater_gdsc_sl/Screens/Quest/widgets/title_with_more_btn.dart';
import 'package:savewater_gdsc_sl/Screens/details/details_screen.dart';
import 'package:savewater_gdsc_sl/constants.dart';
import 'package:camera/camera.dart';


class QuestScreen extends StatefulWidget {
  @override
  _QuestScreenState createState() => _QuestScreenState();
}

class _QuestScreenState extends State<QuestScreen> {
  Future<void> _fetch1() async {
    await Future.delayed(Duration(seconds: 2));
    // 디바이스에서 이용가능한 카메라 목록을 받아옵니다.
    final cameras = await availableCameras();
    // 이용가능한 카메라 목록에서 특정 카메라를 얻습니다.
    final firstCamera = cameras.first;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(size: size),
              TitleWithMoreBtn(
                title: "Tasks",
                press: () {},
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _shoeListView(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _shoeListView() {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: questsData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                },
                child: QuestCard(
                  quest: questsData[index],
                ),
              ),
              SizedBox(
                height: size.height * 0.3,
                width: size.width,
                child: TakePictureButton()
              ),
              SizedBox(
                height: 10,
              ),
            ],
          );
        });
  }
}
