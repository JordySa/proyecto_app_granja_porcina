import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class NewVistReproduccion extends StatefulWidget {
  const NewVistReproduccion({super.key});

  @override
  State<NewVistReproduccion> createState() => _NewVistReproduccionState();
}

class _NewVistReproduccionState extends State<NewVistReproduccion> {
  final formInsertReproduccion = GlobalKey<FormState>();
  String? code;
  String? number;
  String? age;
  String? weight;
  String? race;
  String? photo;
  File? _imageFile;

  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);

    setState(() {
      if (pickedFile != null) {
        _imageFile = File(pickedFile.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Nueva Reproduccion"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(10),
            child: Form(
                key: formInsertReproduccion,
                child: Column(children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text("Codigo"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                    ),
                    onSaved: (value) {
                      code = value;
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
                    decoration: const InputDecoration(
                      label: Text("Arete"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                    ),
                    onSaved: (value) {
                      number = value;
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "El Arete es requerido";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text("Edad"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                    ),
                    onSaved: (value) {
                      age = value;
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "La edad es requerido";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text("Peso"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                    ),
                    onSaved: (value) {
                      age = value;
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "El peso es requerido";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text("Raza"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                    ),
                    onSaved: (value) {
                      age = value;
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "La raza es requerido";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                      onPressed: () async {
                        _imageFile != null
                            ? Image.file(_imageFile!, height: 200, width: 200)
                            : Container();
                        const SizedBox(height: 20);
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () => _pickImage(ImageSource.camera),
                              child: Text('Cámara'),
                            ),
                            SizedBox(width: 20),
                            ElevatedButton(
                              onPressed: () => _pickImage(ImageSource.gallery),
                              child: Text('Galería'),
                            ),
                          ],
                        );
                        SizedBox(height: 20);
                      },
                      child: Text("Seleccionar Foto")),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {}, child: const Text('Guardar')),
                ])),
          ),
        ));
  }
}
