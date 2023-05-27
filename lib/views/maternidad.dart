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
        title: Text('Animal Form'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CircleAvatar(
              radius: 60.0,
              backgroundImage: AssetImage('assets/images/animal.jpg'),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _serialNumberController,
              decoration: InputDecoration(
                labelText: 'Serial Number',
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _speciesController,
              decoration: InputDecoration(
                labelText: 'Species',
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _breedingDateController,
              decoration: InputDecoration(
                labelText: 'Breeding Date',
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _possibleDeliveryDateController,
              decoration: InputDecoration(
                labelText: 'Possible Delivery Date',
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

    print('Serial Number: $serialNumber');
    print('Species: $species');
    print('Breeding Date: $breedingDate');
    print('Possible Delivery Date: $possibleDeliveryDate');
  }

  void _cancelForm() {
    // Lógica para cancelar y volver a la pantalla anterior
    Navigator.pop(context);
  }
}
