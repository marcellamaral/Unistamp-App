import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../functions/calculate_controller.dart';

class CustomResultCalculatePage extends StatelessWidget {
  final Calculate calculate;
  const CustomResultCalculatePage({
    Key? key,
    required this.calculate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green,
        border: Border.all(
          width: 1,
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Força de Dobra (tons): '),
              Obx(
                () => Text(
                  '${calculate.resultadoForca}',
                  style: const TextStyle(
                      fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Raio Interno (mm): '),
              Obx(
                () => Text(
                  '${calculate.raioInterno}',
                  style: const TextStyle(
                      fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
