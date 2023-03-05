import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_processing/data_layer/image_picker_methods.dart';
import 'package:meta/meta.dart';

part 'pick_image_state.dart';

class PickImageCubit extends Cubit<PickImageState> {
  PickImageCubit() : super(const PickImageState());
  final pickImage = ImagePickerMethods();

  void pickImageCamera() async {
    final file = await pickImage.pickFromCamera();
    emit(PickImageState(image: file));
  }

  void pickImageGallery() async {
    final file = await pickImage.pickFromGallery();
    emit(PickImageState(image: file));
  }
}
