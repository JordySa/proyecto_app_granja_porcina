import 'package:flutter/material.dart';

class engorde extends StatefulWidget {
  const engorde({super.key});

  @override
  State<engorde> createState() => _engordeState();
}

class _engordeState extends State<engorde> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Engorde'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQCaD3-_DzXiIUA8l3iLJZaxtIlzdx8nO7Pg&usqp=CAU'),
               Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Ingresar información del cerdo',
                          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8.0),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Edad'),
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Peso'),
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Arete'),
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Alimento'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Seleccionar raza porcina',
                          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8.0),
                        DropdownButton<String>(
                          items: <String>[
                            'Yorkshire',
                            'Landrace',
                            'Duroc',
                          ].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? value) {
                            // Lógica para manejar la selección de la raza
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Text(
                'Ingresar descripción',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                maxLines: null,
                decoration: InputDecoration(labelText: 'Descripción'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}