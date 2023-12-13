import 'package:curso_flutter/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const name = 'Login';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginScreen'),
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
                // Navigator.push(context, MaterialPageRoute(
                //   builder: (context) {
                //     return const SignUpScreen();
                //   },
                // ));
                Navigator.pushNamed(context, 'signUp');
              },
              child: const Text('Go to SignUpScreen'))),
    );
  }
}
