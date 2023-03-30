import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_processing/business_logic/change_aspect_ratio/change_aspect_ratio_state.dart';

class ChangeAspectRatioCubit extends Cubit<ChangeAspectRatioState> {
  ChangeAspectRatioCubit() : super(ChangeAspectRatioState());
  //resize the picture to  a different aspect ratio
  void changeAspectRatio(double ratio) {
    emit(ChangeAspectRatioState(aspectRatio: ratio));
  }
}
