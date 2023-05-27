import 'package:flutter/material.dart';
import 'package:flutter_vacio/views/home.dart';
import 'package:flutter_vacio/views/maternidad.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', routes: {
      "/": (context) => HomeController(),
      "/maternidad": (context) => MaternidadController(),
    });
  }
}
