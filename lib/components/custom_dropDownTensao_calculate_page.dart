import 'package:flutter/material.dart';

class CustomDropDownTensaoCalculatePage extends StatelessWidget {
  final List<DropdownMenuItem<double>> items;
  final double value;
  final Function(double? i) onChanged;

  const CustomDropDownTensaoCalculatePage({
    Key? key,
    required this.items,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(width: 1, color: Colors.grey)),
      padding: const EdgeInsets.all(8),
      child: DropdownButton(
        style: TextStyle(color: Colors.grey.shade700, fontSize: 17),
        isExpanded: true,
        underline: const Text(''),
        borderRadius: BorderRadius.circular(3),
        items: items,
        value: value,
        onChanged: onChanged,
      ),
    );
  }
}
