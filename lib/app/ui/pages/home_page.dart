import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';

import 'package:ocr_example/app/controller/home/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OCR Example'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => controller.recognizedText(),
              child: Lottie.asset('assets/animations/image_recognizing.json',
                  height: 150),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Obx(
                () => controller.isReading
                    ? const CircularProgressIndicator()
                    : Text(controller.textReader),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
