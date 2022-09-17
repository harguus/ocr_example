import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:ocr_example/app/routes/pages.dart';
import 'package:ocr_example/app/routes/routes.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Tesseract OCR Example',
      getPages: Pages.pages,
      initialRoute: Routes.initial,
      defaultTransition: Transition.fade,
    );
  }
}
