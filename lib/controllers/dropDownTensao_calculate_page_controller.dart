import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropDownTensaoCalculatePageController extends GetxController {
  final RxDouble _dropdownValue = 0.0.obs;

  double getDropdownValue() {
    return _dropdownValue.value;
  }

  final List<DropdownMenuItem<double>> options = const [
    DropdownMenuItem(
      value: 0,
      enabled: false,
      child: Text('Tipos de aço. kg/mm²'),
    ),
    DropdownMenuItem(
      value: 45,
      child: Text('Aço 1020'),
    ),
    DropdownMenuItem(
      value: 70,
      child: Text('Aço Inox'),
    ),
  ];

  void dropdownCallback(double? selectedValue) {
    if (selectedValue is double) {
      _dropdownValue.value = selectedValue;
    }
  }
}
