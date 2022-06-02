import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropDownAnguloCalculatePageController extends GetxController {
  final RxDouble _dropdownValue = 0.0.obs;

  double getDropdownValue() {
    return _dropdownValue.value;
  }

  final List<DropdownMenuItem<double>> options = const [
    DropdownMenuItem(
      value: 0,
      enabled: false,
      child: Text('Angulos de Dobra'),
    ),
    DropdownMenuItem(
      value: 30,
      child: Text('Angulo de 30°'),
    ),
    DropdownMenuItem(
      value: 45,
      child: Text('Angulo de 45°'),
    ),
    DropdownMenuItem(
      value: 60,
      child: Text('Angulo de 60°'),
    ),
    DropdownMenuItem(
      value: 90,
      child: Text('Angulo de 90°'),
    ),
    DropdownMenuItem(
      value: 120,
      child: Text('Angulo de 120°'),
    ),
    DropdownMenuItem(
      value: 135,
      child: Text('Angulo de 135°'),
    ),
    DropdownMenuItem(
      value: 165,
      child: Text('Angulo de 165°'),
    ),
  ];

  void dropdownCallback(double? selectedValue) {
    if (selectedValue is double) {
      _dropdownValue.value = selectedValue;
    }
  }
}
