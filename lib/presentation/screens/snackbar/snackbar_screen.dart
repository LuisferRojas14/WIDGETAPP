import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snakback = SnackBar(
      content: const Text('Hola soy un snackbar'),
      action: SnackBarAction(label: 'Ok', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snakback);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,//para obligar a las personas que deben seleccionar una opcion para cerrar el dialogo
      builder: (context) =>  AlertDialog(
        title: Text('¿Estás seguro?'),
        content: Text('¿Estás seguro de que quieres hacer esto?'),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: const Text('Cancelar')),

            FilledButton(onPressed: () => context.pop(),
            child: const Text('Aceptar'))
        ],
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar y Dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        'Duis minim deserunt elit incididunt officia. Mollit in nostrud ea deserunt culpa minim. Culpa excepteur laboris minim duis ipsum pariatur duis ut sunt. Aliqua ullamco ad cillum pariatur Lorem deserunt nulla amet voluptate. Consectetur aute culpa pariatur cupidatat ipsum et ullamco consequat nisi anim. Veniam laborum minim laboris nisi dolor proident est aliqua est exercitation ad qui elit non.')
                  ]);
                },
                child: const Text('Licencia usadas')),
            FilledButton.tonal(
              onPressed: () =>
                openDialog(context),
              child: const Text('Mostrar Dialogo'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
