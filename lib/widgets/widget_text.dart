import 'package:flutter/material.dart';

class WidgetText extends StatelessWidget {
  const WidgetText({super.key});

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
    );
  }
}
