// import 'package:sqflite/sqflite.dart' as sql;
// import 'package:path/path.dart' as path;
// import 'package:sqflite/sqlite_api.dart';
//
//
// class DBHelper {
//   static Future<Database> database() async {
//     final dbpath= await sql.getDatabasesPath();
//     print(dbpath);
//     return sql.openDatabase(path.join(dbpath,'medecamemt.db'),
//       onCreate: (db, version){
//       return db.execute(
//           'CREATE TABLE user_medecaments('
//               'id TEXT PRIMARY KEY,'
//               ' medecament TEXT,'
//               'laboratoire TEXT ,'
//               'presentation TEXT,'
//               'ci TEXT,'
//               'cmin TEXT ,'
//               'cmax TEXT)'
//       );
//     }, version: 1);
//   }
//
//   static Future<void> insert(String table, Map <String, Object> data) async {
//
//     final db = await DBHelper.database();
//     db.insert(
//       table,
//       data,
//       conflictAlgorithm: sql.ConflictAlgorithm.replace,
//     );
//   }
//   static Future<List<Map<String, dynamic>>> getData( String table) async{
//     final db = await DBHelper.database();
//     return db.query(table);
//   }
// }