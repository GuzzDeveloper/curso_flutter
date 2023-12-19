import 'package:curso_flutter/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const name = 'login';
  final DateTime? fechaNacimiento;
  const LoginScreen({super.key, this.fechaNacimiento});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginScreen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              'Tu fecha de nacimiento es:${fechaNacimiento!.add(const Duration(days: 1))}'),
          Center(
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
                    Navigator.pushNamed(context, SignUpScreen.name);
                  },
                  child: const Text('Go to SignUpScreen'))),
        ],
      ),
    );
  }
}
