import 'package:get/get.dart';

import '../model/medidas_model.dart';
import 'package:flutter/material.dart';

bool verificarPreenchimento(Medidas med) {
  if (med.angulo == 0 ||
      med.espessura == 0 ||
      med.largura == 0 ||
      med.tensao == 0) {
    Get.snackbar(
      'Aviso!',
      'Favor preencher todos os campos!',
      backgroundColor: Colors.white,
      borderColor: Colors.red,
      borderRadius: 3,
      borderWidth: 1,
    );
    return false;
  } else {
    return true;
  }
}
