// import 'package:dozaapplication/Models/medecament.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class MedecamentList extends StatelessWidget {
//   final List<Medecament> transactions;
//   final Function deleteTx;
//   MedecamentList(this.transactions, this.deleteTx);
//
//
//   @override
//   Widget build(BuildContext context) {
// //     return transactions.isEmpty? LayoutBuilder(builder: (ctx,constrains){
// //       return
//       Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: <Widget>[
//           Text(
//             'No drugs added yet!!',
//             style: Theme.of(context).textTheme.title,
//             textAlign: TextAlign.center,
//           ),
//           SizedBox(
//             height: constrains.maxHeight * 0.05,
//           ),
//           Container(
//               height: constrains.maxHeight * 0.6,
//               child: Image.asset('Assets/Images/doctor2.png',fit: BoxFit.cover,))
//         ],
//       )
// ;
//     },)
//         :ListView.builder(
//       // itemExtent: 100,
//           itemBuilder: (ctx,index){
//           return Card(
//             elevation: 3,
//             margin: const EdgeInsets.symmetric(vertical: 8,horizontal: 5),
//            child: ListTile(
//             leading: CircleAvatar(
//             backgroundColor: Theme.of(context).primaryColor,
//               radius: 30,
//                child: Container(
//               padding: const EdgeInsets.all(4),
//               width: 50,
//               child: FittedBox(
//                   child: Text('${transactions[index].presentation}\n mg',
//                   style: const TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                   ),
//                       textAlign: TextAlign.center,
//                   ),
//
//                   ),
//             ),
//           ),
//               title: Text(transactions[index].medecament,
//           style: Theme.of(context).textTheme.title,
//              ),
//              subtitle: Text(transactions[index].laboratoire),
//              trailing: IconButton(
//                 icon: Icon(
//             Icons.delete,
//             color: Colors.pink[400],
//             ),
//             onPressed: () =>deleteTx(transactions[index].id),
//           ),
//           onLongPress: (){},
//         ),
//       );
//
//       },
//       itemCount: transactions.length,
//     );
//   }
// }
