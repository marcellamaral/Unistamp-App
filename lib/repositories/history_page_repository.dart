import 'package:unistamp_1/model/time_line.dart';

abstract class HistoryPageRepository {
  Future<List<TimeLine>> getList();
}
