import 'package:image_cropper/image_cropper.dart';

class CropImageState {
  const CropImageState({this.croppedFile});
  final CroppedFile? croppedFile;
}

class Cropped extends CropImageState {}
