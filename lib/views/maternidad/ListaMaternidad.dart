import 'package:flutter/material.dart';
import 'package:proyecto_app_granja_porcina/controller/maternidad_controller.dart';
import 'package:proyecto_app_granja_porcina/entities/maternidad.dart';

class ListaMaternidad extends StatelessWidget {
   
  const ListaMaternidad({super.key});
 
  @override
  Widget build (BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text('Lista Maternidad'),
      ),
  body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: FutureBuilder<List<Maternidad>>(
        future: MaternidadController.select(),
        builder: (context, AsyncSnapshot<List<Maternidad>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting)
          {
            return Center(child: Text('cargando'),);
          }
          else if(snapshot.hasError)
          {
            return Center(child: Text(snapshot.error.toString()),);
          }
          else if (snapshot.hasData){
            List<Maternidad>? maternidades = snapshot.data;
            return ListView(
              children: [
                for (var Maternidad in maternidades!)
                GestureDetector(onTap: ()
                {
                  Navigator.of(context).pushNamed('/editarMaternidad', arguments: Maternidad);
                },
                child: Card(
                  child: Row(children: [Text(Maternidad.codigo),Text(Maternidad.arete),
                  IconButton(icon: Icon(Icons.delete),
                  onPressed: ()=> showDialog
                  (context: context, builder: (BuildContext context )=> AlertDialog(
                    title: Text('Eliminar'),
                    content: Text('Esta seguro de elimar?'),
                    actions: [
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text('Cancelar')),
                    
                    TextButton(onPressed: ()
                    async{
                      await MaternidadController.delete(Maternidad);
                      Navigator.of(context).pushNamed('/listaMaternidad');
                    }, child: Text('Aceptar')),
  
  
                    ],
                  )
                  )), 
                  ],
                  )
                )
                ,)
              ],);
            
          }
          return Center(child: Text('No existen datos'),);
        }
      ),
    ),
   floatingActionButton: FloatingActionButton(onPressed: (){
      gotoCrear (context);
    },
    child: Icon(Icons.add),
    ),
    );
  }
   void gotoCrear (BuildContext context)
  {
    Navigator.of(context).pushNamed('/formularioMaternidad');
  }
}