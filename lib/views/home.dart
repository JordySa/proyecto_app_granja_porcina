import 'package:flutter/material.dart';

class HomeController extends StatefulWidget {
  const HomeController({super.key});

  @override
  State<HomeController> createState() => _HomeControllerState();
}

class _HomeControllerState extends State<HomeController> {
  TextStyle myButtonTextStyle = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bievenido a PorciApp")),
      body: Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Image.network(
              'https://th.bing.com/th/id/OIP.qYe3NmdDVTUg2jF3OsMMKgHaEr?pid=ImgDet&rs=1'),
          TextButton(
              onPressed: () {
                goToMaternidad(context);
              },
              child: Text(
                "Maternidad",
                style: myButtonTextStyle,
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.amber))),
          TextButton(
              onPressed: () {
                goToEngorde(context);
              },
              child: Text(
                "Engorde",
                style: myButtonTextStyle,
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.amber))),
          TextButton(
            onPressed: () {
              goToAlimentacion(context);
            },
            child: Text(
              "Alimentacion",
              style: myButtonTextStyle,
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber)),
          ),
        ]),
      ),
    );
  }

  void goToMaternidad(BuildContext) {
    Navigator.of(context).pushNamed("/");
  }

  void goToAlimentacion(BuildContext) {
    Navigator.of(context).pushNamed("/");
  }

  void goToEngorde(BuildContext) {
    Navigator.of(context).pushNamed("/");
  }
}
