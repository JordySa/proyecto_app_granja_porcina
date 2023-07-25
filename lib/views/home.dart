import 'package:flutter/material.dart';

class HomeController extends StatefulWidget {
  const HomeController({super.key});

  @override
  State<HomeController> createState() => _HomeControllerState();
}

class _HomeControllerState extends State<HomeController> {
  TextStyle myButtonTextStyle = const TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bievenido a PorciApp")),
      body: Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Image.network(
              'https://th.bing.com/th/id/OIP.qYe3NmdDVTUg2jF3OsMMKgHaEr?pid=ImgDet&rs=1'),
          TextButton(
              onPressed: () {goToMaternidad (context);},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.amber)),
              child: Text(
                "MATERNIDAD",
                style: myButtonTextStyle,
              )),
          TextButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.amber)),
              child: Text(
                "ENGORDE",
                style: myButtonTextStyle,
              )),
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber)),
            child: Text(
              "ALIMENTACION",
              style: myButtonTextStyle,
            ),
          ),
          TextButton(
            onPressed: () {
              goToReproduccion(context);
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber)),
            child: Text(
              "REPRODUCCION",
              style: myButtonTextStyle,
            ),
          ),
        ]),
      ),
    );
  }

  // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
  void goToMaternidad(BuildContext) {
    Navigator.of(context).pushNamed("/maternidad/listaMaternidad");
  }

  // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
  void goToAlimentacion(BuildContext) {
    Navigator.of(context).pushNamed("/alimentacion");
  }

  // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
  void goToEngorde(BuildContext) {
    Navigator.of(context).pushNamed("/engorde");
  }

  // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
  void goToReproduccion(BuildContext) {
    Navigator.of(context).pushNamed("/reproduccion/list_reproduccion");
  }
}
