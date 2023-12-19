import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  static const name = 'SliderWidget';
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double volume = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Slider.adaptive(
        min: 0,
        max: 100,
        value: volume,
        divisions: 10,
        onChanged: (value) {
          print(value);
          volume = value;
          setState(() {});
        },
      ),
    ));
  }
}
