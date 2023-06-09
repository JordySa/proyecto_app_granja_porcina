import 'package:flutter/material.dart';
import 'package:flutter_vacio/views/alimentacion.dart';
import 'package:flutter_vacio/views/engorde.dart';
import 'package:flutter_vacio/views/home.dart';
import 'package:flutter_vacio/views/maternidad.dart';
import 'package:flutter_vacio/views/razas.dart';
import 'package:flutter_vacio/views/seguridad/login.dart';

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
