import 'package:flutter/material.dart';
import 'package:masterclass_app/modules/cpf_generator_and_validator/stores/cpf_store.dart';
import 'package:masterclass_app/modules/cpf_generator_and_validator/utils/cpf_mask.dart';

class CpfScreen extends StatefulWidget {
  const CpfScreen({Key? key}) : super(key: key);

  @override
  State<CpfScreen> createState() => _CpfScreenState();
}

class _CpfScreenState extends State<CpfScreen> {
  final cpfStore = CpfStore();
  late TextEditingController controller;

  void genetateCpf(TextEditingController controller) {
    cpfStore.genetateCpf(controller);
  }

  void validateCpf(TextEditingController controller) {
    cpfStore.validateCpf(controller);
  }

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    cpfStore.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gerador de CPF'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              cpfStore.validationMessage,
              style: TextStyle(
                color: cpfStore.messageColor,
                fontSize: 20.0,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextFormField(
              controller: controller,
              inputFormatters: [CpfMask()],
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'CPF',
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor,
                  ),
                  onPressed: () {
                    genetateCpf(controller);
                  },
                  child: Text(
                    'Gerar CPF',
                    style: TextStyle(
                      color: Theme.of(context).highlightColor,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor,
                  ),
                  onPressed: () {
                    validateCpf(controller);
                  },
                  child: Text(
                    'Validar CPF',
                    style: TextStyle(
                      color: Theme.of(context).highlightColor,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
