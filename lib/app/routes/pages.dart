import 'package:get/get.dart';

import 'package:ocr_example/app/routes/routes.dart';
import 'package:ocr_example/app/ui/pages/home_page.dart';
import 'package:ocr_example/app/binding/home/home_binding.dart';

abstract class Pages {
  static final List<GetPage> pages = [
    GetPage(
      name: Routes.initial,
      page: () => const HomePage(),
      binding: HomeBinding(),
      transitionDuration: const Duration(milliseconds: 100),
      transition: Transition.fade,
    ),
  ];
}
