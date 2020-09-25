import 'dart:async';
import 'dart:io' as io;
import 'package:dozaapplication/Models/medecament.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class dbMED {
  static Database _database;
  static const String DB_NAME = 'medecation.db';
  static const String TABLE = 'MEDTABLE';
  static const String ID = 'id';
  static const String MEDECAMENT = 'medecament';
  static const String LABORATOIRE = 'laboratoire';
  static const String PRESENTATION = 'presentation';
  static const String CI = 'ci';
  static const String CMAX = 'cmax';
  static const String CMIN = 'cmin';

  Future <Database> get db async {
    if (_database != null) {
      return _database;
    }
    _database = await initDB();
    return _database;
  }

  initDB() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, DB_NAME);
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int version) async {
    await db
        .execute(
        "CREATE TABLE $TABLE ($ID INTEGER PRIMARY KEY autoincrement, $MEDECAMENT TEXT, $LABORATOIRE TEXT,$MEDECAMENT TEXT,$PRESENTATION REAL,$CI REAL,$CMAX REAL,$CMIN REAL,)");
  }

  Future<int> save(Medecament medecament) async {
    var dbmedecament = await db;
    int res  = await dbmedecament.insert(TABLE, medecament.toMap());
    return res;
  }

  Future<List<Medecament>> getMedecament() async {
    var dbClient = await db;
    List<Map> maps = await dbClient.query(TABLE, columns: [ID, MEDECAMENT]);
    //List<Map> maps = await dbClient.rawQuery("SELECT * FROM $TABLE");
    List<Medecament> medecaments = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {
        medecaments.add(Medecament.fromMap(maps[i]));
      }
    }
    return medecaments;
  }
  Future<int> delete(int id) async {
    var dbMedecament = await db;
    return await dbMedecament.delete(TABLE, where: '$ID = ?', whereArgs: [id]);
  }

  Future<int> update(Medecament medecament) async {
    var dbMedecament = await db;
    return await dbMedecament.update(TABLE, medecament.toMap(),
        where: '$ID = ?', whereArgs: [medecament.id]);
  }

  Future close() async {
    var dbMedecament = await db;
    dbMedecament.close();
  }
}


// Future openDB() async {
//   if(_database==null){
//     _database = await openDatabase(
//         join(await getDatabasesPath(),"meddatabase.db"),
//         version: 1,
//         onCreate: (Database db, int version) async {
//           await db.execute("CREATE TABLE medeTable(id INTEGER PRIMARYKEY autoincrement,medecament TEXT, laboratoire TEXT , presentation REAL, ci REAL, cmax REAL, cmin REAL  )");
//         }
//     );
//   }
// }

// Future <int> insertMed(Medecament medecament) async {
//   await openDB();
//   return await _database.insert('medeTable', medecament.toMap());
// }

// Future <List<Medecament>> getMedecamentList() async {
//   await openDB();
//   final List<Map<String,dynamic >> maps = await _database.query('medeTable');
//   return List.generate(maps.length, (i) {
//     return Medecament(
//       id: maps[i]['id'],
//       medecament: maps[i]['medecament'],
//       laboratoire: maps[i]['laboratoire'],
//       presentation: maps[i]['presentation'],
//       ci: maps[i]['ci'],
//       cmax: maps[i]['cmax'],
//       cmin: maps[i]['cmin'],
//   );
//   });
// }

//   Future <int> updateMedecament(Medecament medecament) async {
//     await openDB();
//     return await _database.update('medeTable', medecament.toMap(),where: "id = ?" ,whereArgs: [medecament.id]);
//   }
//
//   Future <void> deleteMedecament(int id) async {
//     await openDB();
//     await _database.delete(
//       'medeTable',
//         where: "id = ?" ,whereArgs: [id]
//     );
//   }

