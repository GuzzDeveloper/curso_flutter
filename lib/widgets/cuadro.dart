import 'package:flutter/material.dart';

class Cuadro extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final Widget? child;
  const Cuadro({super.key, this.color, this.child, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: 50,
        padding: padding ?? const EdgeInsets.all(15),
        color: color,
        child: child);
  }
}
