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
