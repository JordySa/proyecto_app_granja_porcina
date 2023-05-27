import 'package:flutter/material.dart';

class HomeController extends StatefulWidget {
  const HomeController({super.key});

  @override
  State<HomeController> createState() => _HomeControllerState();
}

class _HomeControllerState extends State<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bievenido a PorciApp")),
      body: Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Image.network(
              'https://th.bing.com/th/id/OIP.qYe3NmdDVTUg2jF3OsMMKgHaEr?pid=ImgDet&rs=1'),
          TextButton(onPressed: () {}, child: Text("Maternidad")),
          TextButton(onPressed: () {}, child: Text("Engorde")),
          TextButton(
            onPressed: () {},
            child: Text("Alimentacion"),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amberAccent)),
          ),
        ]),
      ),
    );
  }
}
