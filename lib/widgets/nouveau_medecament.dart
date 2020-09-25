import 'package:dozaapplication/Helpers/dbMED.dart';
import 'package:dozaapplication/Models/medecament.dart';
import 'package:flutter/material.dart';

class NewMedecament extends StatefulWidget {
  @override
  _NewMedecamentState createState() => _NewMedecamentState();
}

class _NewMedecamentState extends State<NewMedecament> {
  final _medecamentController = TextEditingController();
  final _laboratoireController = TextEditingController();
  final _presentationController = TextEditingController();
  final _ciController = TextEditingController();
  final _cmaxController = TextEditingController();
  final _cminController = TextEditingController();
  final _formkey = new GlobalKey<FormState>();
  final dbMED dbmanager = new dbMED();
  Medecament medecament;
  String civar;
  String medecamentvar;
  String laboratoirevar;
  String presentationvar;
  String cmaxvar;
  String cminvar;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return SingleChildScrollView(
      child: Form(
        key: _formkey,
        child: Card(
          elevation: 3,
          child: Container(
            padding: EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
              bottom: mediaQuery.viewInsets.bottom + 10,
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                TextFormField(
                  onSaved: (val) => medecamentvar = val,
                  controller: _medecamentController,
                  validator: (val) =>
                      val.isNotEmpty ? null : 'should not be empty!',
                  decoration: const InputDecoration(
                    labelText: 'Medecament',
                  ),
                ),
                TextFormField(
                  onSaved: (val) => laboratoirevar = val,
                  validator: (val) =>
                      val.isNotEmpty ? null : 'should not be empty!',
                  controller: _laboratoireController,
                  decoration: const InputDecoration(
                    labelText: 'Laboratoire',
                  ),

                  // onSubmitted: (_) => submitData(),
                ),
                TextFormField(
                  onSaved: (val) => presentationvar = val,
                  validator: (val) =>
                      val.isNotEmpty ? null : 'should not be empty!',
                  controller: _presentationController,
                  decoration: const InputDecoration(
                    labelText: 'Presentation',
                  ),
                  keyboardType: TextInputType.number,
                ),
                Row(
                  children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: TextFormField(
                        onSaved: (val) => civar = val,
                        validator: (val) =>
                            val.isNotEmpty ? null : 'should not be empty!',
                        decoration: const InputDecoration(
                          labelText: 'CI',
                        ),
                        controller: _ciController,
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      child: TextFormField(
                        onSaved: (val) => cmaxvar = val,

                        validator: (val) =>
                            val.isNotEmpty ? null : 'should not be empty!',
                        decoration: const InputDecoration(
                          labelText: 'C Max',
                        ),
                        controller: _cmaxController,
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      child: TextFormField(
                        onSaved: (val) => cminvar = val,
                        validator: (val) =>
                            val.isNotEmpty ? null : 'should not be empty!',
                        decoration: const InputDecoration(
                          labelText: 'C Min',
                        ),
                        controller: _cminController,
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                RaisedButton(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: BorderSide(color: Theme.of(context).accentColor),
                    ),
                    color: Theme.of(context).primaryColor,
                    child: const Text('Ajouter Medecament'),
                    textColor: Theme.of(context).textTheme.button.color,
                    onPressed: () async{
                      int res = await dbmanager.save(
                          new Medecament(
                            dbMED.ID, medecamentvar,
                            laboratoirevar,
                            double.parse(presentationvar),
                            double.parse(civar),
                            double.parse(cmaxvar),
                            double.parse(cminvar),
                         ));
                      print("id medicament $res");
                      _medecamentController.clear();
                      _laboratoireController.clear();
                      _presentationController.clear();
                      _ciController.clear();
                      _cmaxController.clear();
                      _cminController.clear();
                      // _submitData(context);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // void _submitData(BuildContext context) {
  //   if (_formkey.currentState.validate()) {
  //       _formkey.currentState.save();
  //       Medecament med = new Medecament(
  //         dbMED.ID, medecamentvar,
  //           laboratoirevar,
  //           double.parse(presentationvar),
  //           double.parse(civar),
  //           double.parse(cmaxvar),
  //           double.parse(cminvar),
  //       );
  //       dbmanager.save(med).
  //     then((id) => {
  //             _medecamentController.clear(),
  //             _laboratoireController.clear(),
  //             _presentationController.clear(),
  //             _ciController.clear(),
  //             _cmaxController.clear(),
  //             _cminController.clear(),
  //             print('medecation added to DB!!${id}')
  //           });
  //       Navigator.of(context).pop();
  //
  //   }
  // }
}
