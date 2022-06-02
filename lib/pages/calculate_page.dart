import 'package:flutter/material.dart';
import 'package:unistamp_1/components/custom_result_calculate_page.dart';
import 'package:unistamp_1/functions/verificarPreenchimento.dart';
import 'package:unistamp_1/functions/calculate_controller.dart';
import 'package:unistamp_1/controllers/dropDownAngulo_calculate_page_controller.dart';
import 'package:unistamp_1/controllers/dropDownTensao_calculate_page_controller.dart';
import 'package:unistamp_1/components/custom_dropDownAngulo_calculate_page.dart';
import 'package:unistamp_1/components/custom_dropDownTensao_calculate_page.dart';
import 'package:unistamp_1/model/medidas_model.dart';
import 'package:unistamp_1/widgets/custom_textfield.dart';
import 'package:get/get.dart';

class CalculatePage extends StatelessWidget {
  final TextEditingController _espessuraController = TextEditingController();
  final TextEditingController _aberturaController = TextEditingController();
  final TextEditingController _larguraController = TextEditingController();
  final TextEditingController _comprimentoController = TextEditingController();

  final DropDownTensaoCalculatePageController _dropDownTensaoController =
      Get.put(DropDownTensaoCalculatePageController());
  final DropDownAnguloCalculatePageController _dropDownAnguloController =
      Get.put(DropDownAnguloCalculatePageController());

  CalculatePage({Key? key}) : super(key: key);

  final Calculate calculate = Calculate();

  instanciar() {
    Medidas medidas = Medidas();
    medidas.angulo = _dropDownAnguloController.getDropdownValue();
    medidas.tensao = _dropDownTensaoController.getDropdownValue();
    medidas.espessura = _espessuraController.text;
    medidas.largura = _larguraController.text;

    if (verificarPreenchimento(medidas) == true) {
      calculate.medidas = medidas;
      calculate.calcular();
      _aberturaController.text = calculate.abertura.toString();
      _comprimentoController.text = calculate.comprimento.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding:
            const EdgeInsets.only(top: 25, left: 18, right: 18, bottom: 15),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomTextfield(
              enabled: true,
              labelText: 'Espessura da Chapa (mm)',
              suffixText: 'mm',
              controller: _espessuraController,
            ),
            Obx(
              () => CustomDropDownTensaoCalculatePage(
                items: _dropDownTensaoController.options,
                value: _dropDownTensaoController.getDropdownValue(),
                onChanged: _dropDownTensaoController.dropdownCallback,
              ),
            ),
            CustomTextfield(
              enabled: false,
              labelText: 'Abertura da Matriz (mm)',
              suffixText: 'mm',
              controller: _aberturaController,
            ),
            CustomTextfield(
              enabled: true,
              labelText: 'Largura de Dobra (mm)',
              suffixText: 'mm',
              controller: _larguraController,
            ),
            Obx(
              () => CustomDropDownAnguloCalculatePage(
                items: _dropDownAnguloController.options,
                value: _dropDownAnguloController.getDropdownValue(),
                onChanged: _dropDownAnguloController.dropdownCallback,
              ),
            ),
            CustomTextfield(
              enabled: false,
              labelText: 'Min. Comprimento de Descanso (mm)',
              suffixText: 'mm',
              controller: _comprimentoController,
            ),
            CustomResultCalculatePage(calculate: calculate),
            ElevatedButton(
              onPressed: () => instanciar(),
              child: const Text('Calcular'),
            ),
          ],
        ),
      ),
    );
  }
}
