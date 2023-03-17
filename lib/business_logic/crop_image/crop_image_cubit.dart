import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_processing/business_logic/crop_image/crop_image_state.dart';

class CropImageCubit extends Cubit<CropImageState> {
  CropImageCubit() : super(CropImageState());

  void cropImage() async {}
}
