// import 'dart:io';
// import 'dart:async';
// import 'package:dozaapplication/Models/medecament.dart';
// import 'package:flutter/foundation.dart';
// import 'package:path/path.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:sqflite/sqflite.dart';
//
//
// class Dbmedica {
//   //cree une instance
//   static final Dbmedica _instance = new Dbmedica.internal();
//
//   factory Dbmedica() => _instance;
//   static Database _db;
// //la declaration des attributs des tableaux pour eviter de tamber en erreur d'ortographe
//   //tableau medicament=============================================
//   final String tableMed = 'tableMedicament';
//   final String columnId_med = 'id_medicament';
//   final String columnNom = 'nom';
//   final String columnQte_disponible = 'qte_disponible';
//   final String columnVolume_flacon = 'volume_flacon';
//   //tableau details medicament==========================================
//   final String tabledetailMed = 'detailsMedicament';
//   final String columnNom_labo = 'nom_labo';
//   final String columnPresenatation = 'presentation';
//   final String columnPrix = 'prix';
//   final String columnCni = 'c_init';
//   final String columnCmin = 'c_min';
//   final String columnCmax = 'c_max';
//   final String columnVolume_apr_pre = 'volume';
//   final String column_verre_4 = 'verre_4';
//   final String column_verre_25 = 'verre_25';
//   final String column_PVC_25 = 'PVC_25';
//
//   //fonction qui cree une db
//   Future<Database> get db async {
//     if (_db != null) {
//       return _db;
//     }
//     _db = await initDb();
//     return _db;
//   }
//
//   Dbmedica.internal();
//
//   initDb() async {
//     Directory documentDirectory = await getApplicationDocumentsDirectory();
//     String path = join(
//         documentDirectory.path, "maindb.db"); //home://directory/files/maindb.db
//     var ourdb = await openDatabase(path, version: 1, onCreate: _onCreate);
//     return ourdb;
//   }
//
//   void _onCreate(Database db, int version) async {
//     debugPrint('Database OnCreate');
//     //table medicament
//     await db.execute(
//       "CREATE TABLE $tableMed($columnId_med INTEGER PRIMARY KEY , $columnNom TEXT , $columnQte_disponible REAL , $columnVolume_flacon REAL)",
//     );
//     debugPrint('table  medicament OnCreate');
//
// //CRUD CREATE READ UPDATE DELETE
//     //==============================CRUD MEDICAMENT1 ================================================================
// //insirer fonction
//     Future<int> insertMedicament(Medecament med) async {
//       var dbMedicament = await db;
//       int res = await dbMedicament.insert("$tableMed", med.toMap());
//
//       return res;
//     }
//
//     //aficher tout les medicaments
//     Future<List> getAllMed() async {
//       var dbMedicament = await db;
//       var result = await dbMedicament.rawQuery("SELECT * FROM $tableMed");
//       return result.toList();
//     }
//
//     //afficher un medicament
//     Future<Medecament> getMed(int id) async {
//       var dbMedicament = await db;
//       var result = await dbMedicament
//           .rawQuery("SELECT * FROM $tableMed WHERE $columnId_med =$id");
//       if (result.length == 0) return null;
//       return new Medecament.fromMap(result.first);
//     }
//
//     //chercher un medicament
//     Future<Medecament> chercherMed(String nom) async {
//       var dbMedicament = await db;
//       var result = await dbMedicament
//           .rawQuery("SELECT * FROM $tableMed WHERE $columnNom LIKE '$nom%' ");
//       if (result.length == 0) return null;
//       return new Medecament.fromMap(result.first);
//     }
//
//     //supprimer un medicament
//     Future<int> supprimerMed(int id) async {
//       var dbMedicament = await db;
//       return await dbMedicament
//       //? veut dire que on le connait pas pour le moment
//           .delete(tableMed, where: "$columnId_med = ?", whereArgs: [id]);
//     }
//
//     //modifier medicament
//     Future<int> modifierMed(Medecament med) async {
//       var dbMedicament = await db;
//       //? veut dire que on le connait pas pour le moment
//       return await dbMedicament.update(tableMed, med.toMap(),
//           where: "$columnId_med = ?", whereArgs: [med.id]);
//     }
//
// /*
//   //==============================CRUD calculs 6================================================================
// //insirer fonction
//   Future<int> insertcalculs(Calculs cal) async {
//     var dbMedicament = await db;
//     int res = await dbMedicament.insert("$tableCalculs", cal.toMap());
//     return res;
//   }
//   //aficher tout
//   Future<List> getAllCalculs() async {
//     var dbMedicament = await db;
//     var result = await dbMedicament.rawQuery("SELECT * FROM $tableCalculs");
//     return result.toList();
//   }
//   //supprimer
//   Future<int> supprimerCalculs(int id) async {
//     var dbMedicament = await db;
//     return await dbMedicament
//         //? veut dire que on le connait pas pour le moment
//         .delete(tableCalculs, where: "$FKDatePre= ?", whereArgs: [id]);
//   }
// */
//     //fermer la bese des donnee
//     Future fermer() async {
//       var dbMedicament = await db;
//       return dbMedicament.close();
//     }
//   }
// }