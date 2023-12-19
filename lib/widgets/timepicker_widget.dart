import 'package:curso_flutter/screens/login_screen.dart';
import 'package:flutter/material.dart';

class TimePickerWidget extends StatefulWidget {
  static const name = 'TimePickerWidget';
  const TimePickerWidget({super.key});

  @override
  State<TimePickerWidget> createState() => _TimePickerWidgetState();
}

class _TimePickerWidgetState extends State<TimePickerWidget> {
  final fechaNacimiento = TextEditingController();
  TimeOfDay? fecha;
  double volume = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: TextFormField(
            controller: fechaNacimiento,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                  onPressed: () async {
                    fecha = await showTimePicker(
                        context: context,
                        initialTime: const TimeOfDay(hour: 13, minute: 24));
                    print(fecha);
                    fechaNacimiento.text = fecha.toString();
                    setState(() {});
                  },
                  icon: const Icon(Icons.av_timer_sharp)),
              hintText: 'Fecha de nacimiento',
              border: const OutlineInputBorder(),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.favorite),
      ),
    );
  }
}
