import 'package:curso_flutter/widgets/cuadro.dart';
import 'package:flutter/material.dart';

class WidgetColumn extends StatelessWidget {
  const WidgetColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Cuadro(
              color: Colors.green,
            ),
            Cuadro(
              color: Colors.red,
            ),
            Cuadro(
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
