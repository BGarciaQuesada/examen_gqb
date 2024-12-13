import 'package:fl_examen_gqb/screens/sign_in_screen_gbq.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const FlutterLogo(size: 100),
          ElevatedButton(
              onPressed: null, // esto tendría que llevar a la pantalla...
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text('Sign up', style: TextStyle(fontSize: 20)),
              )),
          const ElevatedButton(
              onPressed: null, //Deshabilitado
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text('Sign up', style: TextStyle(fontSize: 20)),
              )),
        ],
      ),
    );
  }
}
