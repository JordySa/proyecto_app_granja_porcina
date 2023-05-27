import 'package:flutter/material.dart';

class MaternidadController extends StatefulWidget {
  const MaternidadController({super.key});

  @override
  State<MaternidadController> createState() => _MaternidadControllerState();
}

class _MaternidadControllerState extends State<MaternidadController> {
  TextEditingController _serialNumberController = TextEditingController();
  TextEditingController _speciesController = TextEditingController();
  TextEditingController _breedingDateController = TextEditingController();
  TextEditingController _possibleDeliveryDateController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario para ingresar gerda gestante'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 16.0),
            TextFormField(
              controller: _serialNumberController,
              decoration: InputDecoration(
                labelText: 'Numero de Arete',
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _speciesController,
              decoration: InputDecoration(
                labelText: 'Esoecie de Cerda',
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _breedingDateController,
              decoration: InputDecoration(
                labelText: 'Fecha de Monta',
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _possibleDeliveryDateController,
              decoration: InputDecoration(
                labelText: 'Possible Dia de Nacimientos ',
              ),
            ),
            SizedBox(height: 24.0),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextButton(
                    child: Text('Guardar'),
                    onPressed: () {
                      // Lógica para guardar los datos del formulario
                      _saveForm();
                    },
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: TextButton(
                    child: Text('Cancelar'),
                    onPressed: () {
                      // Lógica para cancelar y volver a la pantalla anterior
                      _cancelForm();
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _saveForm() {
    // Lógica para guardar los datos del formulario
    String serialNumber = _serialNumberController.text;
    String species = _speciesController.text;
    String breedingDate = _breedingDateController.text;
    String possibleDeliveryDate = _possibleDeliveryDateController.text;

    print('Numero de Arete: $serialNumber');
    print('Raza de Cerda: $species');
    print('Dia de Monta: $breedingDate');
    print('Possible dia de Nacimientos: $possibleDeliveryDate');
  }

  void _cancelForm() {
    // Lógica para cancelar y volver a la pantalla anterior
    Navigator.pop(context);
  }
}
