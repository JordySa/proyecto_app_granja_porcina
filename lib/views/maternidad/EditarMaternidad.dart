import 'package:flutter/material.dart';

import 'package:proyecto_app_granja_porcina/controller/maternidad_controller.dart';
import 'package:proyecto_app_granja_porcina/entities/maternidad.dart';

class editarMaternidad extends StatefulWidget {
  const editarMaternidad({super.key});

  @override
  State<editarMaternidad> createState() => _editarMaternidadState();
}

class _editarMaternidadState extends State<editarMaternidad> {
  final formInsert = GlobalKey<FormState>();

  String? codigo;
  String? arete;
  String? fechaIngreso;
  String? fechaSalida;
  String? raza;

  @override
  Widget build(BuildContext context) {
    Maternidad maternidad = ModalRoute.of(context)!.settings.arguments as Maternidad;
    return Scaffold(
      appBar: AppBar(
        title: Text("Editar Usuario"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.only(top: 10),
          child: Form(
            key: formInsert,
            child: Column(children: [
              TextFormField(
                controller: TextEditingController(text: maternidad.codigo),
                decoration: const InputDecoration(
                  label: Text("Codigo"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                ),
                onSaved: (value) {
                  codigo = value;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "El Código es requerido";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: TextEditingController(text: maternidad.arete),
                decoration: const InputDecoration(
                  label: Text("Nombre"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                ),
                onSaved: (value) {
                  arete = value;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "El arete es requerido";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  save(maternidad.id as int);
                },
                style: ElevatedButton.styleFrom(
                  visualDensity: VisualDensity.compact,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 0,
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontFamily:
                        Theme.of(context).textTheme.bodyLarge?.fontFamily,
                  ),
                  minimumSize: const Size.fromHeight(50),
                ),
                child: const Stack(
                  fit: StackFit.passthrough,
                  children: <Widget>[
                    Center(
                      child: Text(
                        "Aceptar",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  save(int id) async {
    if (formInsert.currentState!.validate()) {
      formInsert.currentState!.save();
      print(codigo);
      print(arete);
      print(fechaIngreso);
      print(fechaSalida);
      print(raza);
      var result = await MaternidadController.update(Maternidad(
          id: id,
          codigo: codigo as String,
          arete: arete as String,
          fechaIngreso: fechaIngreso as String,
          fechaSalida: fechaSalida as String,
          raza: raza as String));
      print(result);
      Navigator.of(context).pushNamed('/listaMaternidad');
    }
  }
}
