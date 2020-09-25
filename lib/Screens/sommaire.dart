import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sommair extends StatefulWidget{
  _sommairState createState() => _sommairState();

}

class _sommairState extends State<sommair>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Sommair'),
        centerTitle: true   ,
        backgroundColor: Colors.blue[500],
        elevation: 0.0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[

                Container(
                  padding: EdgeInsets.all(12),
                  child: MaterialButton(
                    onPressed: (){Navigator.push(context,  new MaterialPageRoute(
                        builder: (context) => sommair()));
                    },
                    padding: EdgeInsets.all(70),

                    child: const Text("Total \n Reliquat",style:TextStyle( color: Colors.white,),textAlign: TextAlign.center,),
                    //   decoration: new BoxDecoration(
                    color:  Colors.blue[500],
                    shape: CircleBorder(),
                    //  ),
                  ),
                ),
                Container(
                  //padding: EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          child:MaterialButton(
                        onPressed: (){Navigator.push(context,  new MaterialPageRoute(
                            builder: (context) => sommair()));
                        },
                        padding: EdgeInsets.all(50),
                        child: const Text("Total \n Quantité \n Consommée",
                          style:TextStyle(
                            color: Colors.white,),
                            textAlign: TextAlign.center,),

                        //   decoration: new BoxDecoration(
                        color: Colors.blue[500],
                        shape: CircleBorder(),
                        //  ),
                      ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: MaterialButton(
                            onPressed: (){Navigator.push(context,  new MaterialPageRoute(
                                builder: (context) => sommair()));
                            },
                            padding: EdgeInsets.all(50),

                            child: const Text("Peix des \n Reliquats \n jetés",
                              style:TextStyle(
                                color: Colors.white,),
                              textAlign: TextAlign.center,),

                            //   decoration: new BoxDecoration(
                            color: Colors.blue[500],
                            shape: CircleBorder(),
                            //  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],

            ),
          ),
        ),
      ),
    );
  }

}