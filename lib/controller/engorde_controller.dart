import 'package:hoy/connection/db_connection_maternidad.dart';
import 'package:hoy/entities/engorde.dart';

class EngordeController {
  static Future<int> insert(Engorde data) async {
    return await DbConnectionMaternidad.insert("Engorde", data.toMap());
  }

  static Future<int> update(Engorde data) async {
    return await DbConnectionMaternidad.update(
        "Engorde", data.toMap(), data.id as int);
  }

  static Future<int> delete(Engorde data) async {
    return await DbConnectionMaternidad.delete("Engorde", data.id as int);
  }

  static Future<List<Engorde>> select() async {
    List<Map<String, dynamic>> result =
        await DbConnectionMaternidad.getAll("Engorde");
    if (result.isEmpty) {
      return List.empty();
    }
    return List.generate(
        result.length, (index) => Engorde.fromMap(result[index]));
  }

  static Future<List<Engorde>> detail(Engorde data) async {
    List<Map<String, dynamic>> result =
        await DbConnectionMaternidad.select("Engorde", "id = ?", [data.id]);
    if (result.isEmpty) {
      return List.empty();
    }
    return List.generate(
        result.length, (index) => Engorde.fromMap(result[index]));
  }
}
