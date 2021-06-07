import 'package:flutter/material.dart';

class ShirtShow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ShirtShow();
  }
}

class _ShirtShow extends State<ShirtShow> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        title: Text('Name'),
      ),
      body: Container(
        height: double.infinity,
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
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 240,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ListViewItems(
                      imageName:
                          'https://firebasestorage.googleapis.com/v0/b/hedomy-c45eb.appspot.com/o/users%2Fimage_picker1005326101493135718.jpg?alt=media&token=712dcd10-ec7e-429d-a2df-6ea731686613',
                    );
                  },
                ),
              ),
              Divider(
                color: Colors.white,
                thickness: 10,
              ),
              SizedBox(height: 22,),
              ListTile(

                title: Text('Name'),
                subtitle: Text('polo'),
              ),
              ListTile(
                title: Text('Size'),
                subtitle: Text('2X 3X 4X'),
              ),
              ListTile(
                title: Text('Price'),
                subtitle: Text('25 L.E'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListViewItems extends StatelessWidget {
  final String imageName;

  ListViewItems({this.imageName});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 150,
      child: ListTile(
        title: Image.network(imageName),
      ),
    );
  }
}
