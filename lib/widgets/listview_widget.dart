import 'package:curso_flutter/widgets/cuadro.dart';
import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  static const name = 'ListView';
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Widget'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                Cuadro(
                  color: Colors.amber,
                ),
                Cuadro(
                  color: Colors.green,
                ),
                Cuadro(
                  color: Colors.pink,
                ),
                Cuadro(
                  color: Colors.purple,
                ),
                Cuadro(
                  color: Colors.black,
                ),
                Cuadro(
                  color: Colors.orange,
                ),
                Cuadro(
                  color: Colors.amber,
                ),
                Cuadro(
                  color: Colors.green,
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.black,
            thickness: 20,
          ),
          SizedBox(
            height: 300,
            child: ListView(
              children: const [
                Cuadro(
                  color: Colors.purple,
                ),
                Cuadro(
                  color: Colors.green,
                ),
                Cuadro(
                  color: Colors.amber,
                ),
                Cuadro(
                  color: Colors.pink,
                ),
                Cuadro(
                  color: Colors.black,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
