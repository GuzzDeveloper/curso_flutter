import 'package:flutter/material.dart';

class WidgetsButtons extends StatelessWidget {
  const WidgetsButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(100, 100),
                  maximumSize: const Size(200, 200),
                  shape: const CircleBorder(),
                  backgroundColor: Colors.red),
              onPressed: () {
                print('Presionaste el ElevatedButton');
              },
              child: const Text('Press me'),
            ),
          ),
          Center(
            child: TextButton(
              style: TextButton.styleFrom(
                  textStyle: const TextStyle(color: Colors.yellow)),
              child: const Text(
                'Press me',
              ),
              onPressed: () {
                print('Presionaste el TextButton');
              },
            ),
          ),
          Center(
            child: IconButton(
              onPressed: () {
                print('Presionaste el IconButton');
              },
              icon: const Icon(Icons.add),
            ),
          ),
          Center(
            child: OutlinedButton(
              onPressed: () {
                print('Presionaste el OutlinedButton');
              },
              child: const Text('Press me'),
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                print('Presionaste el CustomButton');
              },
              child: Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient:
                        LinearGradient(colors: [Colors.red, Colors.yellow])),
              ),
            ),
          )
        ],
      ),
    );
  }
}
