import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
  static const name = 'TextFormFieldWidget';
  const TextFormFieldWidget({super.key});

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  TextEditingController nameCtrl = TextEditingController();
  bool readOnly = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameCtrl.text = 'Fernando';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: TextFormField(
            maxLength: 3,
            readOnly: false,
            controller: nameCtrl,
            obscureText: false,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {
                  print(readOnly);
                  readOnly = !readOnly;
                  print(readOnly);
                  setState(() {});
                },
              ),
              prefixIcon: const Icon((Icons.folder)),
              label: const Text('Label'),
              helperText: 'HelperText',
              hintText: 'HintText',
              border: const OutlineInputBorder(),
            ),
            onChanged: (value) {
              print(value);
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(nameCtrl.value);
        },
        child: const Icon(Icons.create),
      ),
    );
  }
}
