import 'package:dozaapplication/Helpers/dbMED.dart';
import 'package:dozaapplication/Models/medecament.dart';
import 'package:dozaapplication/widgets/nouveau_medecament.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';


class medec extends StatefulWidget {

  @override
  _medecState createState() => _medecState();
}

class _medecState extends State<medec> {

  void _startAddNewMedecament(BuildContext ctx){
    showModalBottomSheet(context: ctx, builder: (_){
    return GestureDetector(
        onTap: (){},
        child: NewMedecament(),
        behavior: HitTestBehavior.opaque,
    );},);
  }
  final dbMED db = new dbMED();
  List<Medecament> medlist;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final appBar = AppBar(title: Text('Medecament',),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          icon:
          Icon(Icons.add),
          onPressed: () => _startAddNewMedecament(context),
        ),
      ],
      backgroundColor: Theme.of(context).primaryColor,
      elevation: 0.0,
    );
    return Scaffold(
      appBar: appBar,
      body:
      FutureBuilder(
        future: db.getMedecament(),
        builder: (context,snapshot) {
          if(snapshot.hasData){
            medlist =snapshot.data;
            return ListView.builder(
              shrinkWrap: true,
              itemCount: medlist == null ?0 : medlist.length,
              itemBuilder: (BuildContext context, int index){
                Medecament med = medlist[index];
                return Card(
                  elevation: 3,
                  margin: const EdgeInsets.symmetric(vertical: 8,horizontal: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Theme.of(context).primaryColor,
                      radius: 30,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        width: 50,
                        child: FittedBox(
                          child: Text('${med.presentation}\n mg',
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),

                        ),
                      ),
                    ),
                    title: Text('${med.medecament}',
                      style: Theme.of(context).textTheme.title,
                    ),
                    subtitle: Text('${med.laboratoire}'),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.delete,
                        color: Colors.pink[400],
                      ),
                      onPressed: (){}
                    ),
                    onLongPress: (){},
                  ),
                );
              },
            );
          }
          return new Container(
            width: double.infinity,
            child: LayoutBuilder(
              builder: (ctx,constrains){
                return
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'No drugs added yet!!',
                        style: Theme.of(context).textTheme.title,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                          height: constrains.maxHeight * 0.6,
                          child: Image.asset('Assets/Images/doctor2.png',fit: BoxFit.cover,))
                    ],
                  );
              },

            ),
          );
        },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat ,
        floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.add,
      ),
          onPressed: () => _startAddNewMedecament(context),
        ),
      );
    }
  }