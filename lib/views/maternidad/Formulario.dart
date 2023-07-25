import 'package:flutter/material.dart';
import 'package:proyecto_app_granja_porcina/controller/maternidad_controller.dart';
import 'package:proyecto_app_granja_porcina/entities/maternidad.dart';
class formularioMaternidad extends StatefulWidget {
  const formularioMaternidad({super.key});

  @override
  State<formularioMaternidad> createState() => _formularioMaternidadState();
}

class _formularioMaternidadState extends State<formularioMaternidad> {
  final formInsert = GlobalKey<FormState>();
  String? codigo;
  String? arete;
  String? fechaIngreso;
  String? fechaSalida;
  String? raza;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Maternidad"),
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

              
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text("Arete"),
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
              TextFormField(
                decoration: const InputDecoration(
                  label: Text("fecha de Ingreso"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                ),
                onSaved: (value) {
                  fechaIngreso = value;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "El fechaIngreso es requerido";
                  }
                  return null;
                },
              ),

              
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text("fechaSalida"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                ),
                onSaved: (value) {
                  fechaSalida = value;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "El fechaSalida es requerido";
                  }
                  return null;
                },
              ),
              
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text("raza"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                ),
                onSaved: (value) {
                  raza = value;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "El raza es requerido";
                  }
                  return null;
                },
              ),



              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  save();
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
                child:  Stack(
                  fit: StackFit.passthrough,
                  children: <Widget>[
                    Center(
                      child: TextButton(onPressed: (){gotoVista(context);}, child: Text(
                        "Aceptar",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          color:Colors.white
                        ),
                      ),)
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

  save() {
    if (formInsert.currentState!.validate()) {
      formInsert.currentState!.save();
      print(codigo);
      print(arete);
      print(fechaIngreso);
      print(fechaSalida);
      print(raza);
      var result = MaternidadController.insert(
        Maternidad
        (codigo: codigo as String, arete: arete as String, fechaIngreso: fechaIngreso as String, fechaSalida: fechaSalida as String, raza: raza as String));
        print(result);
    }
  }
   void gotoVista (BuildContext context)
  {
    Navigator.of(context).pushNamed('/maternidad/listaMaternidad');
  }
}