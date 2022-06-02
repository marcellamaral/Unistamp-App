import 'package:unistamp_1/model/time_line.dart';
import 'package:unistamp_1/repositories/history_page_repository.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class HistoryPageRepositoryMock implements HistoryPageRepository {
  @override
  Future<List<TimeLine>> getList() async {
    var value = await rootBundle.loadString('assets/json/news_list.json');

    List list = jsonDecode(value);

    return list.map((e) => TimeLine.fromJson(e)).toList();
  }
}
