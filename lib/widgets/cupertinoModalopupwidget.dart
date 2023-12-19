import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimePickerCupertinoWidget extends StatefulWidget {
  static const name = 'TimePickerCupertinoWidget';
  const TimePickerCupertinoWidget({super.key});

  @override
  State<TimePickerCupertinoWidget> createState() => _TimePickerWidgetState();
}

class _TimePickerWidgetState extends State<TimePickerCupertinoWidget> {
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
                    if (Platform.isIOS) {
                      return showCupertinoModalPopup<void>(
                        context: context,
                        builder: (BuildContext context) => Container(
                          height: 216,
                          padding: const EdgeInsets.only(top: 6.0),
                          // The Bottom margin is provided to align the popup above the system
                          // navigation bar.
                          margin: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom,
                          ),
                          // Provide a background color for the popup.
                          color: CupertinoColors.systemBackground
                              .resolveFrom(context),
                          // Use a SafeArea widget to avoid system overlaps.
                          child: SafeArea(
                            top: false,
                            child: CupertinoDatePicker(
                              initialDateTime: DateTime(1980, 1, 1, 13, 24),
                              mode: CupertinoDatePickerMode.time,
                              use24hFormat: true,
                              // This is called when the user changes the time.
                              onDateTimeChanged: (DateTime newTime) {
                                // setState(() => time = newTime);
                              },
                            ),
                          ),
                        ),
                      );
                    }
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
