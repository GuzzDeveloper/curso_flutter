import 'package:curso_flutter/screens/home_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  static const name = 'signUp';
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignUpScreen'),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return const HomeScreen();
                //     },
                //   ),
                // );
                // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                //   builder: (context) {
                //     return const HomeScreen();
                //   },
                // ), (route) => false);
                Navigator.pushNamedAndRemoveUntil(
                    context, HomeScreen.name, (route) => false);
              },
              child: const Text('Go to HomeScreen'))),
    );
  }
}
