import 'package:flutter/material.dart';

class WidgetStack extends StatelessWidget {
  const WidgetStack({super.key});

  @override
  Widget build(BuildContext context) {
    const heigt = 300.0;
    const width = 300.0;
    return Scaffold(
      body: Container(
        color: Colors.black,
        height: heigt,
        width: width,
        child: Stack(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
            Positioned(
              bottom: 10,
              right: width * 0.5,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
