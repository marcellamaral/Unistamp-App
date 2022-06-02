import 'dart:async';

import 'package:get/get.dart';

import 'package:unistamp_1/routes/routes.dart';

class SplashPageController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    loading();
  }

  void loading() {
    Timer(const Duration(seconds: 3), () => Get.offAllNamed(Routes.home));
  }
}
