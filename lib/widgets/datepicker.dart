import 'package:curso_flutter/screens/login_screen.dart';
import 'package:flutter/material.dart';

class DatePickerWidget extends StatefulWidget {
  static const name = 'DatePickerWidget';
  const DatePickerWidget({super.key});

  @override
  State<DatePickerWidget> createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  final fechaNacimiento = TextEditingController();
  DateTime? fecha;
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
                    fecha = await showDatePicker(
                      context: context,
                      firstDate:
                          DateTime.now().subtract(const Duration(days: 3650)),
                      // firstDate: DateTime(1980, 1, 1),
                      lastDate: DateTime.now().add(
                        const Duration(days: 3650),
                      ),
                    );
                    print(fecha);
                    fechaNacimiento.text = fecha.toString();
                    setState(() {});
                  },
                  icon: const Icon(Icons.calendar_month)),
              hintText: 'Fecha de nacimiento',
              border: const OutlineInputBorder(),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(
                  fechaNacimiento: fecha,
                ),
              ));
        },
        child: const Icon(Icons.favorite),
      ),
    );
  }
}
