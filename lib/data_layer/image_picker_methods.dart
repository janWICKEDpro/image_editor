import 'package:image_picker/image_picker.dart';

class ImagePickerMethods {
  final imagePickerClassInstance = ImagePicker();

  ///Select images form the devices gallery
  Future<XFile?> pickFromGallery() async {
    try {
      return await imagePickerClassInstance.pickImage(
          source: ImageSource.gallery);
    } catch (e) {
      print(e);
      return null;
    }
  }

  ///select images form the devices camera
  Future<XFile?> pickFromCamera() async {
    try {
      return await imagePickerClassInstance.pickImage(
          source: ImageSource.camera);
    } catch (e) {
      print(e);
      return null;
    }
  }
}
