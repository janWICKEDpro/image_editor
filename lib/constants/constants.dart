import 'package:flutter/material.dart';

Widget text(String text, [Color? color]) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 15,
      color: color,
      fontFamily: 'RobotoMono',
    ),
  );
}

//set the appropriate aspect ratio
double getAppropriateAspectRatio(int index) {
  if (index != 1) {
    switch (index) {
      case 0:
        return 1.0;
      case 2:
        return 0.5;
      case 3:
        return 2 / 3;
      default:
        return 1.0;
    }
  } else {
    return 1.0;
  }
}
