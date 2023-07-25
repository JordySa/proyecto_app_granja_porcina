import 'package:proyecto_app_granja_porcina/connection/db_conecction.dart';
import 'package:proyecto_app_granja_porcina/entities/reproduccion.dart';

class ReproduccionController {
  static Future<int> insert(Reproduccion data) async {
    return await DbConnection.insert("reproduccion", data.toMap());
  }

  static Future<List<Map<String, dynamic>>> query() async {
    return await DbConnection.query("reproduccion");
  }

  static Future<int> delete(int id) async {
    return await DbConnection.delete("reproduccion", id);
  }

  static Future<int> update(Reproduccion data) async {
    return await DbConnection.update("reproduccion", data.toMap());
  }

  static Future<List<Map<String, dynamic>>> select(int id) async {
    return await DbConnection.select("reproduccion", id);
  }

  static Future<List<Map<String, dynamic>>> selectAll() async {
    return await DbConnection.query("reproduccion");
  }

  static Future<List<Map<String, dynamic>>> selectAllByCode(String code) async {
    final db = await DbConnection.getDb();
    return await db.query("reproduccion", where: "code = ?", whereArgs: [code]);
  }
}
