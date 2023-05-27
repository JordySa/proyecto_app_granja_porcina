import 'package:flutter/material.dart';

class alimentacion extends StatefulWidget {
  const alimentacion({super.key});

  @override
  State<alimentacion> createState() => _alimentacionState();
}

class _alimentacionState extends State<alimentacion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Alimentacion porcina'),),
    body:Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
            Container(
              width: 200, // Establece el ancho deseado
              height: 200, // Establece la altura deseada
              child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtDaeU6jENPR6Vz4sXfAaqmmfHBsYKxV8qmA&usqp=CAU'),
            ),              
            Text(
                'Formulario de Alimentos Porcinos',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              TextFormField(
                decoration: InputDecoration(labelText: 'Nombre del alimento'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Ingrediente principal'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Contenido de proteína (%)'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Contenido de grasa (%)'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Contenido de fibra (%)'),
              ),
              SizedBox(height: 16.0),
              TextButton(
                onPressed: () {
                  // Lógica para enviar el formulario
                  // Puedes guardar los datos en una base de datos, enviarlos a un servidor, etc.
                },
                child: Text('Enviar'),
              ),
            ],
          ),
        ),
      );
  }
}