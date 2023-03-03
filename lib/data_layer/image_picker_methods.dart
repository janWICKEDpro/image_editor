import 'package:image_picker/image_picker.dart';

class ImagePickerMethods {
  final imagePickerClassInstance = ImagePicker();

  ///Select images form the device gallery
  Future<XFile?> pickFromGallery() async {
    try {
      final file =
          await imagePickerClassInstance.pickImage(source: ImageSource.gallery);
      return file;
    } catch (e) {
      print(e);
      return null;
    }
  }

  ///select images form the device camera
  Future<XFile?> pickFromCamera() async {
    try {
      final file =
          await imagePickerClassInstance.pickImage(source: ImageSource.camera);
      return file;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
