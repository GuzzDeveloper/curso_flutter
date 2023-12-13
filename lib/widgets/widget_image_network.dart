import 'package:flutter/material.dart';

class WidgetImageNetwork extends StatelessWidget {
  const WidgetImageNetwork({super.key});

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
      body: Opacity(
        opacity: 1,
        child: Container(
          height: 200,
          width: 200,
          color: Colors.red,
          child: const Image(
              image: NetworkImage(
                  'https://r2.abcimg.es/resizer/resizer.php?imagen=https%3A%2F%2Fs1.abcstatics.com%2Fmedia%2Fseries%2F000%2F002%2F462%2Fla-hora-de-tom-y-jerry-2.jpg&nuevoancho=620&medio=abc'),
              fit: BoxFit.fill),
        ),
      ),
    );
  }
}
