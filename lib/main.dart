import 'package:curso_flutter/screens/home_screen.dart';
import 'package:curso_flutter/screens/login_screen.dart';
import 'package:curso_flutter/screens/signup_screen.dart';
import 'package:curso_flutter/widgets/listview_builder_widget.dart';
import 'package:curso_flutter/widgets/listview_separated_widget.dart';
import 'package:curso_flutter/widgets/listview_widget.dart';
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
      initialRoute: ListViewSeparatedWidget.name,
      routes: {
        HomeScreen.name: (context) => const HomeScreen(),
        LoginScreen.name: (context) => const LoginScreen(),
        SignUpScreen.name: (context) => const SignUpScreen(),
        ListViewWidget.name: (context) => const ListViewWidget(),
        ListViewBuilderWidget.name: (context) => const ListViewBuilderWidget(),
        ListViewSeparatedWidget.name: (context) =>
            const ListViewSeparatedWidget(),
      },
    );
  }
}
