import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hedomy/Database/DB_Helper.dart';
import 'package:hedomy/Database/constrain.dart';
import 'package:hedomy/UI/edit_profile.dart';
import 'package:hedomy/models/prandModel.dart';
import 'package:hedomy/models/userModel.dart';
import 'package:image_picker/image_picker.dart';

int _currentIndex = 0;

DataBaseHelper DB = new DataBaseHelper(userModel);

UserModel userModel;
List<PrandModel> brandsList = DB.Users;
class AfterSignIn extends StatefulWidget {
  AfterSignIn(final userObj1,final userObj2) {
    userModel = userObj1;
    prandModel=userObj2;
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return _AfterSignIn();
  }
}

class _AfterSignIn extends State<AfterSignIn> {
  _AfterSignIn() {
    print("obj $userModel");
  }

  List<Widget> Pages = <Widget>[
    Home(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Pages.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home_filled,
              color: Colors.blue[900],
            ),
            icon: Icon(Icons.home_filled),
            backgroundColor: Colors.blue[300],
            label: "Home",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.person,
              color: Colors.blue[800],
            ),
            icon: Icon(Icons.person),
            backgroundColor: Colors.blue[300],
            label: "Profile",
          ),
        ],
        type: BottomNavigationBarType.shifting,
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Home();
  }
}

class _Home extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_outlined),
          onPressed: () {
            setState(() {
              _currentIndex = 0;
            });
          },
        ),
        backgroundColor: Colors.blue[900],
        title: Text(
          "Home",
          style: TextStyle(
            fontSize: 25,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
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
          itemCount: DB.Users.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  color: Color(0xff848ac6),
                  height: 100,
                  width: MediaQuery.of(context).size.width - 50,
                  child: ListTile(
                    title: Text(
                      "${brandsList[index].name}",
                      style: TextStyle(fontSize: 24),
                    ),
                    subtitle: Stack(
                      children: [
                        Text("${brandsList[index].phone}"),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text("${brandsList[index].address}"),
                        ),
                      ],
                    ),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "${brandsList[index].image}"),
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

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Profile();
  }
}

class _Profile extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_outlined),
          onPressed: () {
            setState(() {
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (context) => AfterSignIn()));
              print("${_currentIndex} ali");
              _currentIndex = 0;
            });
          },
        ),
        title: Text(
          "Profile",
          style: TextStyle(
            fontSize: 25,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        // padding: EdgeInsets.only(top: 40),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color(0xff27408b),
              Color(0x8027408b),
              Color(0xff27408b),
            ])),
        child: ListView(
          padding: EdgeInsets.only(left: 16, top: 25, right: 16),
          children: [
            // Text(
            //   "Profile",
            //   style: TextStyle(
            //     fontSize: 25,
            //     fontWeight: FontWeight.w500,
            //   ),
            // ),
            SizedBox(
              height: 25,
            ),
            Center(
              child: Stack(
                children: [
                  // Container(
                  //   width: 130,
                  //   height: 130,
                  //   decoration: BoxDecoration(
                  //       border: Border.all(width: 4, color: Colors.black),
                  //       boxShadow: [
                  //         BoxShadow(
                  //           spreadRadius: 2,
                  //           blurRadius: 5,
                  //           color: Colors.black.withOpacity(0.1),
                  //           offset: Offset(0, 10),
                  //         )
                  //       ],
                  //       shape: BoxShape.circle,
                  //       image: DecorationImage(
                  //         image: NetworkImage(
                  //             "https://www.marni.com/12/12386489MT_13_n_r.jpg"),
                  //         fit: BoxFit.cover,
                  //       )),
                  // ),
                  CircleAvatar(
                    radius: 85,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(userModel.image),
                      // image ==null ? NetworkImage(userModel.image) :FileImage(image),
                      radius: 80,
                    ),
                  ),
                  // Positioned(
                  //   bottom: 0,
                  //   right: 0,
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //         shape: BoxShape.circle,
                  //         border: Border.all(
                  //           color: Colors.white,
                  //           width: 4,
                  //         ),
                  //         color: Colors.blueAccent,
                  //         boxShadow: [
                  //           BoxShadow(
                  //             color: Colors.white70,
                  //             blurRadius: 5,
                  //           ),
                  //         ]),
                  //     height: 40,
                  //     width: 40,
                  //     child: InkWell(
                  //       child: Icon(
                  //         Icons.camera_alt,
                  //         color: Colors.black,
                  //       ),
                  //       onTap: () {
                  //         DB.pickImage();
                  //
                  //       },
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ListTile(
              title: Text("Name"),
              subtitle: Text(userModel.name),
              leading: Icon(
                Icons.person,
                color: Colors.black,
              ),
              // trailing: Icon(
              //   Icons.edit,
              //   color: Colors.black,
              // ),
            ),
            ListTile(
              title: Text("Phone"),
              subtitle: Text(userModel.phone),
              leading: Icon(
                Icons.phone_android,
                color: Colors.black,
              ),
              // trailing: Icon(
              //   Icons.edit,
              //   color: Colors.black,
              // ),
            ),
            ListTile(
              title: Text("E-mail"),
              subtitle: Text(userModel.email),
              leading: Icon(
                Icons.email,
                color: Colors.black,
              ),
              // trailing: Icon(
              //   Icons.edit,
              //   color: Colors.black,
              // ),
            ),
            RaisedButton(
              onPressed: () {
                img = userModel.image;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EditProfile(userModel)));
              },
              child: Text("Edit Profile"),
            )
          ],
        ),
      ),
    );
  }
}
