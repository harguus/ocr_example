// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class CameraController extends GetxController {
  final ImagePicker _picker = ImagePicker();
  String imagePath = '';

  getImages() async {
    List<XFile>? images = await _picker.pickMultiImage(
      imageQuality: 90,
      maxHeight: 800,
      maxWidth: 600,
    );
    return images;
  }

  Future<String?> takeImage() async {
    final XFile? image = await _picker.pickImage(
      source: ImageSource.camera,
      imageQuality: 100,
    );

    return image!.path;
  }
}
