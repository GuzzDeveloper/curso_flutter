import 'package:curso_flutter/widgets/cuadro.dart';
import 'package:flutter/material.dart';

class WidgetExpanded extends StatelessWidget {
  const WidgetExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Cuadro(
                color: Colors.green,
              ),
            ),
            Expanded(
              child: Cuadro(
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 3,
              child: Cuadro(
                color: Colors.yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
