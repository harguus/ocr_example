import 'package:get/get.dart';

import 'package:ocr_example/app/controller/ocr/ocr_controller.dart';
import 'package:ocr_example/app/controller/camera/camera_controller.dart';

class HomeController extends GetxController {
  final RxString _textReader = ''.obs;
  final RxBool _isReading = false.obs;
  final cam = Get.put(CameraController());
  final ocr = Get.put(OCRController());

  String get textReader => _textReader.value;
  set textReader(String value) => _textReader.value = value;

  bool get isReading => _isReading.value;
  set isReading(bool value) => _isReading.value = value;

  recognizedText() async {
    final image = await cam.takeImage();
    if (image != null) {
      isReading = true;
      update();
      final tempText = await ocr.reader(image);
      if (tempText != null) {
        textReader = tempText;
      }
    }
    isReading = false;
    update();
  }
}
