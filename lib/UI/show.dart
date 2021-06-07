


import 'package:flutter/material.dart';
import 'package:hedomy/UI/edit_profile.dart';

import 'package:hedomy/UI/showTshirt.dart';

import 'package:hedomy/models/t-shirtModel.dart';


 ShirtModel shirtModel;
List<ShirtModel> shirtList = DB.shirtList;

class Show extends StatefulWidget{
  Show(final brandObj1) {

    shirtList = brandObj1;
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Show();
  }

}
class _Show extends State<Show>{
  @override
  void initState() {
    print('shirt11 ${DB.shirtList.length}');
    // TODO: implement initState
    //  DB.showBrand('Town');
    //
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
       centerTitle: true,
       backgroundColor: Colors.blue[900],
       title: Text('Hedomy'),
     ),
     body: Container(
       padding: EdgeInsets.only(top: 20),
       decoration: BoxDecoration(
         gradient: LinearGradient(
           begin: Alignment.topCenter,
           end: Alignment.bottomCenter,
           colors: [
             Color(0xff27408b),
             Color(0x8027408b),
             Color(0xff27408b),
           ],
         ),
       ),
       child: ListView.builder(
         itemCount:shirtList.length,
         itemBuilder: (context, index) {
           return Column(
             children: [
               Container(
                 color: Color(0xff848ac6),
                 height: 100,
                 width: MediaQuery.of(context).size.width - 50,
                 child: ListTile(
                   // onTap: (){
                   //   Navigator.push(context, MaterialPageRoute(builder: (context)=>ShirtShow()));
                   // },
                   title: Text(
                     "${shirtList[index].name}",
                     style: TextStyle(fontSize: 24),
                   ),
                   subtitle: Stack(
                     children: [
                       Text("${shirtList[index].size}",),
                       Padding(
                         padding: EdgeInsets.only(top: 22),
                         child: Text("${shirtList[index].price}"),
                       ),
                     ],
                   ),
                   leading: CircleAvatar(
                     backgroundColor: Colors.orange,
                     // backgroundImage:
                     // NetworkImage("${brandsList[index].image}"),
                     radius: 30,
                   ),
                 ),
               ),
               SizedBox(
                 height: 20,
               ),
             ],
           );
         },
       ),
     ),

   );
  }

}