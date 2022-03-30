import 'package:flutter/material.dart';
import 'package:savewater_gdsc_sl/Screens/Quest/widgets/take_picture.dart' as pic;

class customBuyButton extends StatefulWidget {
  @override
  State<customBuyButton> createState() => _customBuyButtonState();
}

class _customBuyButtonState extends State<customBuyButton> with AutomaticKeepAliveClientMixin<customBuyButton> {
  @override bool get wantKeepAlive => true;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () {
        setState(() {
          isChecked = true;
        });
      },
      child: Container(
        width: 60,
        height: 30,
        decoration: new BoxDecoration(
          color: (isChecked) ? Colors.grey : Colors.black,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            "Done",
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
