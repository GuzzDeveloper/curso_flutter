import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  static const name = 'MyStatefulWidget';
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int numero = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MyText(numero: numero),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            print('Número antes de presionar boton:$numero');
            numero++;
            print('Número despues de presionar boton:$numero');
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({
    super.key,
    required this.numero,
  });

  final int numero;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$numero',
      style: const TextStyle(fontSize: 30),
    );
  }
}
