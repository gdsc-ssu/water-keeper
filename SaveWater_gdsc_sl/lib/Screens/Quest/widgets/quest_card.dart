import 'package:flutter/material.dart';
import 'package:savewater_gdsc_sl/Screens/Quest/data/data.dart';
import 'package:savewater_gdsc_sl/Screens/Quest/widgets/custom_buy_button.dart';
import 'package:savewater_gdsc_sl/Screens/Quest/widgets/take_picture.dart';
import 'package:savewater_gdsc_sl/constants.dart';


class QuestCard extends StatelessWidget {
  final QuestData quest;

  const QuestCard({Key? key, required this.quest}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        //borderRadius: BorderRadius.circular(15),
        color: quest.backgroundColor,
      ),
      height: 140,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RichText(
                  text: TextSpan(
                    text: quest.name,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                ],
              ),
          ),
          SizedBox(height: 1),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  quest.tagLine,
                  style: Theme.of(context).textTheme.caption,
                ),
                SizedBox(height: 5),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("${quest.price}",
                    style: Theme.of(context).textTheme.headline5),
                customBuyButton()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
