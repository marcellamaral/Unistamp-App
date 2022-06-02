import 'package:get/get.dart';
import 'package:unistamp_1/controllers/calculate_page_controller.dart';
import 'package:unistamp_1/controllers/splash_page_controller.dart';
import 'package:unistamp_1/pages/calculate_page.dart';
import 'package:unistamp_1/pages/home_page.dart';
import 'package:unistamp_1/pages/splash_page.dart';
import 'package:unistamp_1/pages/unistamp_history_page.dart';
import 'package:unistamp_1/routes/routes.dart';

class AppPages {
  static final list = [
    GetPage(
      name: Routes.home,
      page: () => Home(),
      transition: Transition.cupertino,
    ),
    GetPage(
        name: Routes.splashScreen,
        page: () => const SplashPage(),
        transition: Transition.cupertino,
        binding: BindingsBuilder.put(() => SplashPageController())),
    GetPage(
      name: Routes.calculatePage,
      page: () => CalculatePage(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: Routes.unistampHistoryPage,
      page: () => UnistampHistoryPage(),
      transition: Transition.cupertino,
    ),
  ];
}
