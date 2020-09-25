import 'package:dozaapplication/Providers/searchmedecament.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screens/medecamentScreen.dart';
import 'Screens/preparer_solution.dart';
import 'Screens/sommaire.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: SearchMedecament(),
      child: MaterialApp(
        home: doza(),
        title: 'Doza',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Colors.lightBlueAccent,
          errorColor: Colors.red,
          fontFamily: 'Quicksand',
          textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor
              ),
              button: TextStyle(color: Colors.white),
          ),
          appBarTheme: AppBarTheme(
            textTheme: ThemeData.light().textTheme.copyWith(
                title: TextStyle(
                    fontFamily: 'openSans',
                    fontSize: 20,
                    fontWeight: FontWeight.bold
            )
            ),
          ),

        ),
      ),
    );
  }
}
class doza extends StatefulWidget {

  @override
  _dozaState createState() => _dozaState();
}

class _dozaState extends State<doza> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final appBar = AppBar(
      title: Text('Doza',),
      centerTitle: true,
      backgroundColor: Theme.of(context).primaryColor,
      elevation: 0.0,
    );
      return Scaffold(
          appBar: appBar,
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                  children: <Widget>[
                    ClipPath(
                      clipper: MyClipper(),
                      child: Container(
                        height: 210,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                        ),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'Assets/Images/logo.png',
                              width: 140,
                            ),
                            Text("Gagner Du Temps , Sauver Des Vies",
                                style:TextStyle(
                                    color: Colors.white,
                                    fontSize:20,
                                ),
                                textAlign: TextAlign.center,
                            ),
                          ],
                        ),

                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          MaterialButton(
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => Preparer_Solution()
                                  )
                              );
                            },
                            padding: const EdgeInsets.all(70),

                            child: const Text("Preparer\nSolution",style:TextStyle( color: Colors.white,fontSize: 15) ),

                            //   decoration: new BoxDecoration(
                            color:  Theme.of(context).primaryColor,
                            shape: CircleBorder(),
                            //  ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          MaterialButton(
                            onPressed: (){Navigator.push(context,  MaterialPageRoute(builder: (context) => sommair()), );},
                            padding: const EdgeInsets.all(55),
                            // margin: const EdgeInsets.fromLTRB(0,20,0,8),
                            child: const Text("Sommair",style:TextStyle( color: Colors.white,fontSize: 15)),

                            //   decoration: new BoxDecoration(
                            color:  Theme.of(context).primaryColor,
                            shape: CircleBorder(),
                            //  ),
                          ),
                          MaterialButton(
                            onPressed: (){Navigator.push(context,  MaterialPageRoute(builder: (context) => medec()), );},
                            padding: const EdgeInsets.all(55),
                            // margin: const EdgeInsets.fromLTRB(0,20,0,8),
                            child: const Text("Medecament",style:TextStyle( color: Colors.white,fontSize: 15)),

                            //   decoration: new BoxDecoration(
                            color:  Theme.of(context).primaryColor,
                            shape: CircleBorder(),
                            //  ),
                          ),


                        ],
                      ),
                    ),


                  ]
              ),
            ),
          ),


                drawer: Drawer(
                  // Add a ListView to the drawer. This ensures the user can scroll
                  // through the options in the drawer if there isn't enough vertical
                  // space to fit everything.
                  child: ListView(
                    // Important: Remove any padding from the ListView.
                    padding: EdgeInsets.zero,
                    children: <Widget>[
                      DrawerHeader(
                        child: Text(
                          'Menu',),

                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,

                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.history),
                        title: Text('Historique Dactivite'),
                        onTap: () {
                          // Update the state of the app
                          // ...
                          // Then close the drawer
                          Navigator.pop(context);

                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.feedback),
                        title: Text('Feedback'),
                        onTap: () {
                          // Update the state of the app
                          // ...
                          // Then close the drawer
                          Navigator.pop(context);

                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.info),

                        title: Text('Info'),
                        onTap: () {
                          // Update the state of the app
                          // ...
                          // Then close the drawer
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
              );
   }
}
class MyClipper extends CustomClipper<Path>
{
   @override
   Path getClip(Size size) {
     // TODO: implement getClip
     var path = Path();
     path.lineTo(0, size.height-80);
     path.quadraticBezierTo(size.width/2, size.height+80, size.width, size.height-80);
     path.lineTo(size.width, 0);
     path.close();
     return path;
   }

   @override
   bool shouldReclip(CustomClipper<Path> oldClipper) {
     // TODO: implement shouldReclip
     return false;
   }
}
