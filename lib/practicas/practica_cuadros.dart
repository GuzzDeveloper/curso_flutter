import 'package:curso_flutter/widgets/cuadro.dart';
import 'package:flutter/material.dart';

class PracticaCuadros extends StatelessWidget {
  const PracticaCuadros({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          'Mi primer pantalla',
          style: TextStyle(fontSize: 30),
        ),
        actions: const [
          Icon(Icons.search, size: 30, color: Colors.green),
          Icon(
            Icons.account_circle,
            size: 15,
            color: Colors.indigo,
          ),
        ],
      ),
      body: const Cuadro(
        color: Colors.red,
        child: Cuadro(
          padding: EdgeInsets.all(40),
          color: Colors.green,
          child: Cuadro(
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}
