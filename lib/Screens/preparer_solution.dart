
import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Preparer_Solution extends StatefulWidget {
  @override
  _Preparer_SolutionState createState() => _Preparer_SolutionState();
}

class _Preparer_SolutionState extends State<Preparer_Solution> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final appBar = AppBar(title: Text('Preparer Solution',),
      centerTitle: true,
      backgroundColor: Theme.of(context).primaryColor,
      elevation: 0.0,
    );
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(12),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            Container(
                width: double.infinity,
                padding: EdgeInsets.only(bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Patien",
                      textAlign: TextAlign.right,
                      style: Theme.of(context).textTheme.title
                    ),
                  ],
                )
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                textAlign: TextAlign.center,
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: "Nom",
                  hintStyle: TextStyle(
                    color: Colors.grey[400],
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Theme.of(context).primaryColor),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                textAlign: TextAlign.center,
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: "Prenom",
                  hintStyle: TextStyle(
                    color: Colors.grey[400],
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Theme.of(context).primaryColor),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),

            Row(

              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(12),
                    child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      decoration: InputDecoration(
                        hintText: "Poids",
                        hintStyle: TextStyle(
                          color: Colors.grey[400],
                        ),

                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Theme.of(context).primaryColor),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(12),
                    child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      decoration: InputDecoration(
                        hintText: "Taille",
                        hintStyle: TextStyle(
                          color: Colors.grey[400],
                        ),

                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Theme.of(context).primaryColor),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Container(
              padding: EdgeInsets.all(12),
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                textAlign: TextAlign.center,
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: "Surface Corporelle",
                  hintStyle: TextStyle(
                    color: Colors.grey[400],
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Theme.of(context).primaryColor),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    Text("Médecament",
                      textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.title
                    ),
                  ],
                )
            ),
            Container(

              margin: EdgeInsets.all(12.0),
              padding: EdgeInsets.fromLTRB(12, 0.0, 12, 0.0),

              decoration: BoxDecoration(
                border: Border.all(
                    width: 1.0,
                    color: Colors.grey,
                ),
                borderRadius: BorderRadius.all(
                    Radius.circular(30)//                 <--- border radius here
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(12.0),
                      //padding: EdgeInsets.fromLTRB(12, 0.0, 12, 0.0),
                      child: Icon(

                        Icons.favorite,
                        color: Colors.pink,
                        size: 24.0,
                        semanticLabel: 'Text to announce in accessibility modes',
                      ),
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 7,
                    child: DropDownField(
                      hintText: "Medicament",
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                      ),
                      enabled: true,
                      itemsVisibleInDropdown: 5,
                      // items: Medicament,
                      onValueChanged: (value){
                        setState(() {
                        });
                      },

                    ),

                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  fit: FlexFit.tight,
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(12, 12, 12, 0.0),
                    child: SizedBox(
                      height: 50,
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        decoration: InputDecoration(
                          hintText: "Posologie",
                          hintStyle: TextStyle(
                            color: Colors.grey[400],
                          ),

                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Theme.of(context).primaryColor),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(12, 12, 12, 0.0),
                    child: SizedBox(
                      height: 50,
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        decoration: InputDecoration(
                          hintText: "Reduction",
                          hintStyle: TextStyle(
                            color: Colors.grey[400],
                          ),

                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Theme.of(context).primaryColor),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(12, 12, 12, 0.0),
                  child: SizedBox(

                    height: 50.0,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: BorderSide(color: Theme.of(context).primaryColor)),
                      onPressed: () {},
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                      child: Text("Calculate".toUpperCase(),
                          style: TextStyle(fontSize: 14)),
                    ),
                  ),
                ),
              ],
            ),

          ],

          ),
        ),
      ),
    );
  }
}
