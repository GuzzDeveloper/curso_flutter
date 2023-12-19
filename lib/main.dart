import 'package:curso_flutter/screens/home_screen.dart';
import 'package:curso_flutter/screens/login_screen.dart';
import 'package:curso_flutter/screens/profile_screen.dart';
import 'package:curso_flutter/screens/signup_screen.dart';
import 'package:curso_flutter/widgets/checkbox_widget.dart';
import 'package:curso_flutter/widgets/cupertinoModalopupwidget.dart';
import 'package:curso_flutter/widgets/datepicker.dart';
import 'package:curso_flutter/widgets/dropdownbutton_widget.dart';
import 'package:curso_flutter/widgets/listview_builder_widget.dart';
import 'package:curso_flutter/widgets/listview_separated_widget.dart';
import 'package:curso_flutter/widgets/listview_widget.dart';
import 'package:curso_flutter/widgets/slider_widget.dart';
import 'package:curso_flutter/widgets/textformfield.dart';
import 'package:curso_flutter/widgets/timepicker_widget.dart';
import 'package:curso_flutter/widgets/widget_statefulwidget.dart';
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
      initialRoute: TimePickerCupertinoWidget.name,
      routes: {
        HomeScreen.name: (context) => const HomeScreen(),
        ProfileScreen.name: (context) => const ProfileScreen(),
        LoginScreen.name: (context) => const LoginScreen(),
        SignUpScreen.name: (context) => const SignUpScreen(),
        ListViewWidget.name: (context) => const ListViewWidget(),
        ListViewBuilderWidget.name: (context) => const ListViewBuilderWidget(),
        MyStatefulWidget.name: (context) => const MyStatefulWidget(),
        TextFormFieldWidget.name: (context) => const TextFormFieldWidget(),
        DropDownButtonWidget.name: (context) => const DropDownButtonWidget(),
        CheckboxWidget.name: (context) => const CheckboxWidget(),
        SliderWidget.name: (context) => const SliderWidget(),
        DatePickerWidget.name: (context) => const DatePickerWidget(),
        TimePickerCupertinoWidget.name: (context) =>
            const TimePickerCupertinoWidget(),
        TimePickerWidget.name: (context) => const TimePickerWidget(),
        ListViewSeparatedWidget.name: (context) =>
            const ListViewSeparatedWidget(),
      },
    );
  }
}
