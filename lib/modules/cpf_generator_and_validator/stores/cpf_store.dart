import 'package:flutter/material.dart';
import 'package:masterclass_app/modules/cpf_generator_and_validator/models/cpf_model.dart';
import 'package:masterclass_app/modules/cpf_generator_and_validator/utils/cpf_generator.dart';

class CpfStore extends ChangeNotifier {
  String validationMessage;
  Color messageColor;

  CpfStore(
      {this.validationMessage = 'Vamos Gerar e/ou Validar um CPF',
      this.messageColor = Colors.white});

  void genetateCpf(TextEditingController controller) {
    final cpfGenerator = CpfGenerator();
    final cpfModel = cpfGenerator.generateCpf();

    controller.text = cpfModel.value;

    notifyListeners();
  }

  void validateCpf(TextEditingController controller) {
    final cpf = controller.text;
    if (cpf.characters.length < 14) {
      validationMessage = 'CPF preenchido incorretamente';
      messageColor = Colors.yellow.shade700;

      notifyListeners();

      return;
    }

    final cpfModel = CpfModel(cpf);

    final isValid = cpfModel.validate();

    if (isValid) {
      validationMessage = 'CPF Válido';
      messageColor = Colors.green;
    } else {
      validationMessage = 'CPF Não é Válido';
      messageColor = Colors.red;
    }

    notifyListeners();
  }
}
