import 'package:flutter/material.dart';

import 'package:hoy/views/home.dart';
import 'package:hoy/views/maternidad/EditarMaternidad.dart';
import 'package:hoy/views/maternidad/Formulario.dart';
import 'package:hoy/views/maternidad/ListaMaternidad.dart';
import 'package:hoy/views/reproduccion/list_reproduccion.dart';

import 'package:hoy/views/seguridad/login.dart';

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
