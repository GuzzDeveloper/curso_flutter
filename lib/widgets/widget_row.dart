import 'package:curso_flutter/widgets/cuadro.dart';
import 'package:flutter/material.dart';

class WidgetRow extends StatelessWidget {
  const WidgetRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        height: double.infinity,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Cuadro(
              color: Colors.green,
            ),
            Cuadro(
              color: Colors.red,
            ),
            Spacer(),
            Cuadro(
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
