import 'package:flutter/material.dart';

class RazaController extends StatefulWidget {
  const RazaController({super.key});

  @override
  State<RazaController> createState() => _RazaControllerState();
}

class _RazaControllerState extends State<RazaController> {
  final List<String> razasPorcinas = [
    'Yorkshire',
    'Landrace',
    'Duroc',
    'Hampshire',
    'Berkshire',
    'Pietrain',
    'Large Black',
    'Tamworth',
    'Poland China',
    'Chester White',
    'Meishan',
    'Mangalica',
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
            title: Text(raza),
          );
        },
      ),
    );
  }
}
