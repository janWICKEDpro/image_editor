import 'package:flutter/material.dart';
import 'package:image_processing/data_layer/crop_ratio.dart';

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

final cropRatio = <AspectRatios>[
  AspectRatios(image: 'assets/images/frame.ico', name: "Original"),
  AspectRatios(image: 'assets/images/free.ico', name: "Free"),
  AspectRatios(image: 'assets/images/square.ico', name: "Square"),
  AspectRatios(image: 'assets/images/rectangle.ico', name: "2:3"),
];

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
