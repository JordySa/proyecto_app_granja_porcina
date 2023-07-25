import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbConnection {
  static const dbName = 'engorde.db';

  static Future<Database> getDb() async {
    return openDatabase(join(await getDatabasesPath(), dbName), version: 1,
        onCreate: (db, version) async {
      await db.execute(

          'CREATE TABLE engorde (id INTEGER PRIMARY KEY, edad INTEGER, peso REAL, arete TEXT, alimento TEXT, raza TEXT, descripcion TEXT);');
    });
  }

  static Future<int> insert(String table, Map<String, dynamic> data) async {
    final db = await DbConnection.getDb();
    return await db.insert(table, data);
  }

  static Future<List<Map<String, dynamic>>> query(String table) async {
    final db = await DbConnection.getDb();
    return await db.query(table);
  }

  static Future<int> delete(String table, int id) async {
    final db = await DbConnection.getDb();
    return await db.delete(table, where: "id = ?", whereArgs: [id]);
  }

  static Future<int> update(String table, Map<String, dynamic> data) async {
    final db = await DbConnection.getDb();
    return await db
        .update(table, data, where: "id = ?", whereArgs: [data['id']]);
  }

  static Future<List<Map<String, dynamic>>> select(String table, int id) async {
    final db = await DbConnection.getDb();
    return await db.query(table, where: "id = ?", whereArgs: [id]);
  }

  static getAll(String s) {}
}
