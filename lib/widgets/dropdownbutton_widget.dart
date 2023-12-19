import 'package:flutter/material.dart';

class DropDownButtonWidget extends StatefulWidget {
  static const name = 'DropDownButtonWidget';
  const DropDownButtonWidget({super.key});

  @override
  State<DropDownButtonWidget> createState() => _DropDownButtonWidgetState();
}

class _DropDownButtonWidgetState extends State<DropDownButtonWidget> {
  TextEditingController nameCtrl = TextEditingController();
  List<String> nombres = ['Emilio', 'Fernando', 'Fausto', 'Edgar', 'Rafa'];
  bool readOnly = true;
  String? nombreElegido;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameCtrl.text = 'Fernando';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
            child: DropdownButton<String>(
                hint: const Text('Selecciona un valor'),
                value: nombreElegido,
                items: nombres.map((nombre) {
                  return DropdownMenuItem(value: nombre, child: Text(nombre));
                }).toList(),
                onChanged: (value) {
                  nombreElegido = value;
                  print(value);
                  setState(() {});
                })),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(nameCtrl.value);
        },
        child: const Icon(Icons.create),
      ),
    );
  }
}
