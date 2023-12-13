import 'package:curso_flutter/screens/login_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'Home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(
                //   builder: (context) {
                //     return const LoginScreen();
                //   },
                // ));

                Navigator.pushNamed(context, LoginScreen.name);
              },
              child: const Text('Go to LoginScreen'))),
    );
  }
}
