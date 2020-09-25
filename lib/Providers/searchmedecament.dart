import 'package:dozaapplication/Helpers/dbMED.dart';
import 'package:dozaapplication/Helpers/db_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:dozaapplication/Models/medecament.dart';

class SearchMedecament with ChangeNotifier {
  final dbMED dbmanager = new dbMED();

  void addNewMedecament(String txmedecament, String txlaboratoire,
      double txpresentation, double txci, double txcmax, double txcmin) {
    // final newMd = Medecament(
    //   medecament: txmedecament,
    //   laboratoire: txlaboratoire,
    //   presentation: txpresentation,
    //   id: DateTime.now().toString(),
    //   ci: txci,
    //   cmax: txcmax,
    //   cmin: txcmin,
    // );
    // notifyListeners();
    // dbmanager.insertMed(newMd);
    // _items.add(newMd);
    // DBHelper.insert('user_medecaments', {
    //   'id': newMd.id,
    //   'medecament': newMd.medecament,
    //   'laboratoire': newMd.laboratoire,
    //   'presentation': newMd.presentation,
    //   'ci': newMd.ci,
    //   'cmax': newMd.cmax,
    //   'cmin': newMd.cmin
    // });
  }

  // Future<void> fetchAndSetMedecaments() async {
  //   final dataList = await DBHelper.getData('user_medecaments');
  //   _items = dataList
  //       .map(
  //         (items) => Medecament(
  //             id: items['id'],
  //             medecament: items['medecament'],
  //             laboratoire: items['laboratoire'],
  //             presentation: items['presentation'],
  //             ci: items['ci'],
  //             cmax: items['cmax'],
  //             cmin: items['cmin']),
  //       )
  //       .toList();
  //   notifyListeners();
  // }
}
