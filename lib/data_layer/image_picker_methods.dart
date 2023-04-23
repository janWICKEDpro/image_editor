import 'package:image_picker/image_picker.dart';

class ImagePickerMethods {
  final imagePickerClassInstance = ImagePicker();

  ///Select images form the device
  Future<XFile?> pickFromGallery() async {
    try {
      final file =
          await imagePickerClassInstance.pickImage(source: ImageSource.gallery);
      assert(file != null);
      return file;
    } catch (e) {
      return null;
    }
  }

  ///select image form the device
  Future<XFile?> pickFromCamera() async {
    try {
      final file =
          await imagePickerClassInstance.pickImage(source: ImageSource.camera);
      return file;
    } catch (e) {
      return null;
    }
  }
}
