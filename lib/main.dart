import 'package:curso_flutter/screens/home_screen.dart';
import 'package:curso_flutter/screens/login_screen.dart';
import 'package:curso_flutter/screens/signup_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.name,
      routes: {
        HomeScreen.name: (context) => const HomeScreen(),
        LoginScreen.name: (context) => const LoginScreen(),
        SignUpScreen.name: (context) => const SignUpScreen(),
      },
    );
  }
}
