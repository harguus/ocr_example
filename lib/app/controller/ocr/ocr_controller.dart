// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';

class OCRController extends GetxController {
  Future<String?> reader(String file) async {
    final textRecognizer = TextRecognizer(script: TextRecognitionScript.latin);
    final RecognizedText recognizedText =
        await textRecognizer.processImage(InputImage.fromFilePath(file));
    final text = recognizedText.text;
    textRecognizer.close();
    return text;
  }
}
