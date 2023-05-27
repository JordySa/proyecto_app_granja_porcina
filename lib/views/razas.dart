import 'package:flutter/material.dart';

class RazaController extends StatefulWidget {
  const RazaController({super.key});

  @override
  State<RazaController> createState() => _RazaControllerState();
}

class _RazaControllerState extends State<RazaController> {
  final List<RazaPorcina> razasPorcinas = [
    RazaPorcina(
      nombre: 'Yorkshire',
      caracteristicas: 'Buen rendimiento en carne magra y buen crecimiento.',
    ),
    RazaPorcina(
      nombre: 'Landrace',
      caracteristicas: 'Gran prolificidad y calidad de carne.',
    ),
    RazaPorcina(
      nombre: 'Duroc',
      caracteristicas: 'Buena capacidad de crecimiento y carne con buen sabor.',
    ),
    // Agrega más razas porcinas aquí
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Razas Porcinas'),
      ),
      body: ListView.builder(
        itemCount: razasPorcinas.length,
        itemBuilder: (context, index) {
          final raza = razasPorcinas[index];
          return ListTile(
            title: Text(raza.nombre),
            subtitle: Text(raza.caracteristicas),
          );
        },
      ),
    );
  }
}

class RazaPorcina {
  final String nombre;
  final String caracteristicas;

  RazaPorcina({
    required this.nombre,
    required this.caracteristicas,
  });
}
