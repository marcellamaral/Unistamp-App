import 'package:get/get.dart';
import 'package:unistamp_1/controllers/history_page_controller.dart';

import 'package:unistamp_1/repositories/history_page_repository_mock.dart';

class RootBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<HistoryPageController>(
        HistoryPageController(HistoryPageRepositoryMock()));
  }
}
