import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_control_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Función para retroceder cuando se presiona el botón
              Navigator.of(context).pop();
            }),
        title: const Text('UI Controls'),
      ),
    );
  }
}
