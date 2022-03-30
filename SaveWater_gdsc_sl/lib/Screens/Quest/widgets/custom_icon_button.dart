import 'package:flutter/material.dart';

Widget customIconButtom(
    {required Widget child,
      required VoidCallback onTap,
      required Color backgroundColor,
      required BorderRadius radius}) {
  return InkWell(
    borderRadius: radius,
    onTap: onTap,
    child: Ink(
        padding: EdgeInsets.all(15),
        width: 50,
        height: 50,
        decoration: new BoxDecoration(
          color: backgroundColor,
          borderRadius: radius,
        ),
        child: child),
  );
}
