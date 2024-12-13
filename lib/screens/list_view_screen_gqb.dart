import 'package:fl_examen_gqb/screens/screens_gqb.dart';
import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListViewScreen'),
        ),
        body: ListView(
          children: [
            ListTile(
              trailing: const Icon(Icons.sports_basketball),
              title: Text("Pistas"),
              onTap: null, // esto tendría que llevar a la pantalla...
            ),
            ListTile(
              trailing: const Icon(Icons.face),
              title: Text("Monitores"),
              onTap: null, // esto tendría que llevar a la pantalla...
            ),
            ListTile(
              trailing: const Icon(Icons.access_alarm),
              title: Text("Reservas"),
              onTap: () => displayDialog(context),
            ),
          ],
        ));
  }

  void displayDialog(BuildContext context) {
    showDialog(
        barrierDismissible: false, // OJO!!! Asegurar que actions tiene el botón de cerrar SINO SE BLOQUEA
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Aviso'),
            shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(5)),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('El sistema de reservas está deshabilitado en estos momentos.'),
                SizedBox(
                  height: 10,
                ),
                FlutterLogo(size: 100)
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cerrar'))
            ],
          );
        });
  }


}
