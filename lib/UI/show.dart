// import 'dart:io';
//
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:hedomy/Database/DB_Helper.dart';
//
// class show extends StatefulWidget {
//   const show({Key key}) : super(key: key);
//
//   @override
//   _showState createState() => _showState();
// }
//
// class _showState extends State<show> {
//
//
//   String r='g1bgaaEGTSZvaCVcy3w30';
//   DataBaseHelper y=new DataBaseHelper();
//   List UserInfo = [];
//   List x = [];
//   File image;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     // y.fetchData();
//   }
//
//   // fetchData() async {
//   //   dynamic result = await DatabaseHelper().fetch1();
//   //   if (result == null) {
//   //     print('unable to catch');
//   //     return CircularProgressIndicator();
//   //   } else {
//   //     setState(() {
//   //       UserInfo = result;
//   //       print('unable to catchvvvvvvvvvvvvvvv');
//   //     });
//   //   }
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Welcome"),
//         ),
//         body:null,
//         // StreamBuilder(
//         //   stream: y.fetchData(),
//         //   builder: (BuildContext context ,AsyncSnapshot<QuerySnapshot> snapshot){
//         //     if(!snapshot.hasData)return Text('Loading');
//         //     return ListView(
//         //       children: snapshot.data.docs.map((document) {
//         //         return Center(
//         //           child: Container(
//         //             child: Column(
//         //               children: [
//         //                 Text(document['name']),
//         //                 Text(document['uId']),
//         //                 Text(document['name']),
//         //                 Text(document['phone']),
//         //               ],
//         //             ),
//         //           ),
//         //         );
//         //       }).toList(),
//         //
//         //     );
//         //   },
//         // )
//       // Container(
//       //   decoration: BoxDecoration(
//       //       gradient: LinearGradient(
//       //           begin: Alignment.topCenter,
//       //           end: Alignment.bottomCenter,
//       //           colors: [
//       //         Color(0xff27408b),
//       //         Color(0x8027408b),
//       //         Color(0xff27408b),
//       //       ])),
//       //   child: ListView.builder(
//       //       itemCount: UserInfo.length,
//       //       itemBuilder: (context, index) {
//       //         return Container(
//       //           // padding: EdgeInsets.only(top: 40),
//       //           // decoration: BoxDecoration(
//       //           //     gradient: LinearGradient(
//       //           //         begin: Alignment.topCenter,
//       //           //         end: Alignment.bottomCenter,
//       //           //         colors: [
//       //           //           Color(0xff27408b),
//       //           //           Color(0x8027408b),
//       //           //           Color(0xff27408b),
//       //           //         ])),
//       //           child: Column(
//       //             children: [
//       //
//       //               SizedBox(
//       //                 height: 25,
//       //               ),
//       //               Center(
//       //                 child: Stack(
//       //                   children: [
//       //                     CircleAvatar(
//       //                       radius: 85,
//       //                       backgroundColor: Colors.white70,
//       //                       child: CircleAvatar(
//       //                         backgroundImage:
//       //
//       //                          image == null ? null :  NetworkImage(UserInfo[index]['path']),
//       //                         radius: 80,
//       //                       ),
//       //                     ),
//       //                     Positioned(
//       //                       bottom: 0,
//       //                       right: 0,
//       //                       child: Container(
//       //                         decoration: BoxDecoration(
//       //                             shape: BoxShape.circle,
//       //                             border: Border.all(
//       //                               color: Colors.white,
//       //                               width: 4,
//       //                             ),
//       //                             color: Colors.blueAccent,
//       //                             boxShadow: [
//       //                               BoxShadow(
//       //                                 color: Colors.white70,
//       //                                 blurRadius: 5,
//       //                               ),
//       //                             ]),
//       //                         height: 40,
//       //                         width: 40,
//       //                         child: InkWell(
//       //                           child: Icon(
//       //                             Icons.edit,
//       //                             color: Colors.black,
//       //                           ),
//       //                           onTap: () {},
//       //                         ),
//       //                       ),
//       //                     ),
//       //                   ],
//       //                 ),
//       //               ),
//       //               SizedBox(
//       //                 height: 50,
//       //               ),
//       //               ListTile(
//       //                 title: Text("Name"),
//       //                 subtitle: Text(UserInfo[index]['name']),
//       //                 leading: Icon(
//       //                   Icons.person,
//       //                   color: Colors.black,
//       //                 ),
//       //                 trailing: Icon(
//       //                   Icons.edit,
//       //                   color: Colors.black,
//       //                 ),
//       //               ),
//       //               ListTile(
//       //                 title: Text("Phone"),
//       //                 subtitle: Text(UserInfo[index]['phone']),
//       //                 leading: Icon(
//       //                   Icons.phone,
//       //                   color: Colors.black,
//       //                 ),
//       //                 trailing: Icon(
//       //                   Icons.edit,
//       //                   color: Colors.black,
//       //                 ),
//       //               ),
//       //               ListTile(
//       //                 title: Text("E-mail"),
//       //                 subtitle: Text(UserInfo[index]['email']),
//       //                 leading: Icon(
//       //                   Icons.email,
//       //                   color: Colors.black,
//       //                 ),
//       //                 trailing: Icon(
//       //                   Icons.edit,
//       //                   color: Colors.black,
//       //                 ),
//       //               )
//       //             ],
//       //           ),
//       //         );
//       //       }),
//       // )
//     );
//   }
// // fetch() async {
// //   final firebaseUser=await FirebaseAuth.instance.currentUser;
// //   if(firebaseUser!=null)
// //     await FirebaseFirestore.instance.
// //     collection("user").doc(firebaseUser.uid)
// //         .get()
// //         .then((value){
// //      return value.data();
// //     });
// // }
// // String name1;
//
// }
