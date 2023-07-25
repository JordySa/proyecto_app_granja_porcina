import 'package:flutter/material.dart';
import 'package:proyecto_app_granja_porcina/views/alimentacion.dart';
import 'package:proyecto_app_granja_porcina/views/engorde.dart';
import 'package:proyecto_app_granja_porcina/views/home.dart';
import 'package:proyecto_app_granja_porcina/views/maternidad.dart';
import 'package:proyecto_app_granja_porcina/views/razas.dart';
import 'package:proyecto_app_granja_porcina/views/seguridad/login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        initialRoute: "/seguridad/login",
        routes: {
          "/": (context) => HomeController(),
          "/seguridad/login": (context) => LoginController(),
          "/maternidad": (context) => MaternidadController(),
          "/razas": (context) => RazaController(),
          "/alimentacion": (context) => alimentacion(),
          "/engorde": (context) => engorde(),
        });
  }
}
