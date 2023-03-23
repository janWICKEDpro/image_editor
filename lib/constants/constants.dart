import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
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

final cropRatio = <CropRatio>[
  CropRatio(),
];
