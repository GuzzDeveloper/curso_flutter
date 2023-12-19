import 'package:flutter/material.dart';

class CheckboxWidget extends StatefulWidget {
  static const name = 'CheckboxWidget';
  const CheckboxWidget({super.key});

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(
            value: isPressed,
            onChanged: (value) {
              print('Antes de presionar:$isPressed');
              isPressed = !isPressed;
              print('Despues de presionar:$isPressed');
              setState(() {});
            },
          ),
          Switch(
            value: isPressed,
            onChanged: (value) {
              print('Antes de presionar:$isPressed');
              isPressed = !isPressed;
              print('Despues de presionar:$isPressed');
              setState(() {});
            },
          ),
          SwitchListTile(
            title: const Text('Aceptas terminos y condiciones'),
            value: isPressed,
            onChanged: (value) {
              print('Antes de presionar:$isPressed');
              isPressed = !isPressed;
              print('Despues de presionar:$isPressed');
              setState(() {});
            },
          )
        ],
      ),
    );
  }
}
