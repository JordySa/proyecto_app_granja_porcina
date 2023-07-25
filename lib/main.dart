import 'package:flutter/material.dart';

import 'package:proyecto_app_granja_porcina/views/home.dart';
import 'package:proyecto_app_granja_porcina/views/maternidad/EditarMaternidad.dart';
import 'package:proyecto_app_granja_porcina/views/maternidad/Formulario.dart';
import 'package:proyecto_app_granja_porcina/views/maternidad/ListaMaternidad.dart';
import 'package:proyecto_app_granja_porcina/views/reproduccion/list_reproduccion.dart';

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
          "/": (context) => const HomeController(),
          "/seguridad/login": (context) => const LoginController(),
          "/reproduccion/list_reproduccion": (context) =>const ListViewReproduccion(),

          
          "/maternidad/listaMaternidad": (context) => ListaMaternidad(),
          "/editarMaternidad": (context) => editarMaternidad(),
          "/formularioMaternidad": (context) => formularioMaternidad(),
        });
  }
}
