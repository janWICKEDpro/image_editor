import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_processing/business_logic/change_aspect_ratio/change_aspect_ratio_state.dart';

class ChangeAspectRatioCubit extends Cubit<ChangeAspectRatioState> {
  ChangeAspectRatioCubit() : super(ChangeAspectRatioState(aspectRatio: 1.0));
  //resize the picture to  a different aspect ratio
  void changeAspectRatio(double aspectRatio) {
    print(aspectRatio);
    emit(ChangeAspectRatioState(aspectRatio: aspectRatio));
  }
}
