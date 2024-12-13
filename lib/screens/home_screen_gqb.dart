import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          FlutterLogo(),
          ElevatedButton(
              onPressed: Navigator.push(),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text('Sign up', style: TextStyle(fontSize: 20)),
              )),
          ElevatedButton(
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
