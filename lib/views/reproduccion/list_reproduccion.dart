import 'package:flutter/material.dart';

class ListViewReproduccion extends StatefulWidget {
  const ListViewReproduccion({super.key});

  @override
  State<ListViewReproduccion> createState() => _ListViewReproduccionState();
}

class _ListViewReproduccionState extends State<ListViewReproduccion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reproduccion"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.add),
            title: const Text("Agregar"),
            subtitle: const Text("Agregar una nueva reproduccion"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.pushNamed(context, "/reproduccion/new_reproduccion");
            },
          ),
          ListTile(
            leading: const Icon(Icons.list),
            title: const Text("Listar"),
            subtitle: const Text("Listar todas las reproducciones"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.pushNamed(context, "/reproduccion/list");
            },
          ),
        ],
      ),
    );
  }
}
