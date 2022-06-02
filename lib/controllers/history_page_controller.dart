import 'package:get/get.dart';
import 'package:unistamp_1/model/time_line.dart';
import 'package:unistamp_1/repositories/history_page_repository.dart';

class HistoryPageController extends GetxController {
  final HistoryPageRepository _historyPageRepository;
  HistoryPageController(this._historyPageRepository);

  List<TimeLine> timeLine = [];

  fetch() async {
    timeLine = await _historyPageRepository.getList();
  }

  @override
  void onInit() {
    super.onInit();
    fetch();
  }
}
