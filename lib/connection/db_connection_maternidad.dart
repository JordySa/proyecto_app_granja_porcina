import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';



class DbConnectionMaternidad {
 static const dbName = 'Maternidad.db';
 
 static Future<Database> getDb () async
 {
  return openDatabase(join(await getDatabasesPath(), dbName),
  version: 1,
  onCreate: ((db, version) async =>
  {
    await db.execute('CREATE TABLE Maternidad(id INTEGER PRIMARY KEY, codigo TEXT, arete TEXT, fechaIngreso date, fechaSalida date, raza TEXT);')
  } )
  );
 }
static Future<int> insert (String table, dynamic data) async
{
  final db = await DbConnectionMaternidad.getDb();
  return db.insert(table, data, conflictAlgorithm: ConflictAlgorithm.replace);
}

static Future<int> update(String table, dynamic data, int id) async
{
  final db= await DbConnectionMaternidad.getDb();
  return db.update(table, data, where: 'id=?',
  whereArgs: [id],
  conflictAlgorithm: ConflictAlgorithm.replace);
}

static Future<int> delete(String table, int id) async
{
  final db = await DbConnectionMaternidad.getDb();
  return db.delete(table, where: 'id = ?', whereArgs: [id]);
}


static Future<List<Map<String, dynamic>>> getAll(String table) async
{
  final db = await DbConnectionMaternidad.getDb();
  return await db.query(table);
}

static Future <List<Map<String, dynamic>>> select(
  String table, String where, List<dynamic> whereArgs) async
  {
    final db = await DbConnectionMaternidad.getDb();
    return await db.query(table, where: where, whereArgs: whereArgs);
  }

}