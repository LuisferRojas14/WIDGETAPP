import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_control_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              // Función para retroceder cuando se presiona el botón
              Navigator.of(context).pop();
            }),
        title: const Text('UI Controls'),
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation seleledTransportation = Transportation.car;
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics:
          const ClampingScrollPhysics(), // Evita que el contenido se desborde
      children: [
        SwitchListTile(
            title: const Text('Developer mode'),
            subtitle: const Text('Controles adicionales'),
            value: isDeveloper,
            onChanged: (value) => setState(() {
                  isDeveloper = !isDeveloper;
                })),
        RadioListTile(
          title: const Text('By Car'),
          subtitle: const Text('Travel by car'),
          value: Transportation.car,
          groupValue: seleledTransportation,
          onChanged: (value) => setState(() {
            seleledTransportation = Transportation.car;
          }),
        ),
        RadioListTile(
          title: const Text('By Boat'),
          subtitle: const Text('Viajar por barco'),
          value: Transportation.boat,
          groupValue: seleledTransportation,
          onChanged: (value) => setState(() {
            seleledTransportation = Transportation.boat;
          }),
        ),
        RadioListTile(
          title: const Text('By Plane'),
          subtitle: const Text('Viajar por avión'),
          value: Transportation.plane,
          groupValue: seleledTransportation,
          onChanged: (value) => setState(() {
            seleledTransportation = Transportation.plane;
          }),
        ),
        RadioListTile(
          title: const Text('By Submarine'),
          subtitle: const Text('Viajar por submarino'),
          value: Transportation.submarine,
          groupValue: seleledTransportation,
          onChanged: (value) => setState(() {
            seleledTransportation = Transportation.submarine;
          }),
        ),
      ],
    );
  }
}
