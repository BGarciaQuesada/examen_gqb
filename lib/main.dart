import 'package:fl_examen_gqb/screens/screens_gqb.dart';
import 'package:fl_examen_gqb/screens/sign_in_screen_gbq.dart';
import 'package:flutter/material.dart';
import 'package:fl_examen_gqb/theme/theme_gbq.dart';


import 'screens/home_screen_gqb.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
        home: HomeScreen()
    );
  }
}
