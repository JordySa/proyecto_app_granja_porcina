
import 'package:proyecto_app_granja_porcina/connection/db_connection_maternidad.dart';
import 'package:proyecto_app_granja_porcina/entities/maternidad.dart';

class MaternidadController{
  static Future <int> insert (Maternidad data) async
  {
    return await DbConnectionMaternidad.insert("Maternidad", data.toMap());
  }

  static Future<int> update (Maternidad data) async
  {
    return await DbConnectionMaternidad.update("Maternidad", data.toMap(), data.id as int);
  }


  static Future<int> delete(Maternidad data) async
  {
    return await DbConnectionMaternidad.delete("Maternidad", data.id as int);
  }


  static Future<List<Maternidad>> select() async
  {
    List<Map<String, dynamic>> result = await DbConnectionMaternidad.getAll("Maternidad");
    if(result.isEmpty)
    {
      return List.empty();
    }
    return List.generate(result.length, (index) => Maternidad.fromMap(result[index]));
  }

  static Future<List<Maternidad>> detail(Maternidad data) async
  {
    List<Map<String, dynamic>> result = await DbConnectionMaternidad.select("Maternidad", "id = ?", [data.id]);
    if(result.isEmpty)
    {
      return List.empty();
    }
    return List.generate(result.length, (index) => Maternidad.fromMap(result[index]));
  }
}