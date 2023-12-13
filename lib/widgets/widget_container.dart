import 'package:flutter/material.dart';

class WidgetContainer extends StatelessWidget {
  const WidgetContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        backgroundColor: const Color(0xff8b0000),
        title: const Text(
          'Mi primer app',
          style: TextStyle(
              backgroundColor: Colors.green,
              fontSize: 30.1,
              color: Color.fromRGBO(63, 255, 181, 1),
              fontFamily: 'Times',
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline),
          textScaleFactor: 1,
          textAlign: TextAlign.center,
        ),
        actions: const [Text('A'), Text('B')],
      ),
      body: Container(
        decoration:
            const BoxDecoration(color: Colors.amber, shape: BoxShape.circle),
        margin: const EdgeInsets.all(30),
        height: 300,
        width: double.infinity,
        child: Center(
          child: Container(
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(color: Colors.purple, blurRadius: 20)
                  ]),
              child: const Text('Este es un container')),
        ),
      ),
    );
  }
}
