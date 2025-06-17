import 'package:flutter/material.dart';

class Project_1 extends StatefulWidget {
  const Project_1({super.key});

  @override
  State<Project_1> createState() => _Project_1();
}

class _Project_1 extends State<Project_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "PROJECT 1",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 35, letterSpacing: 5),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                //This container is used for Image.asset widget
                margin: EdgeInsets.fromLTRB(8, 25, 8, 25),
                decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Colors.blue),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withValues(alpha: 0.5),
                      spreadRadius: 8,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Image.asset(
                    width: 200,
                    height: 250,
                    fit: BoxFit.cover,
                    alignment: Alignment(0, 0),
                    'assets/images/pe1_image.jpg')
                // Image(
                // width: 250,
                // height: 250,
                // fit: BoxFit.cover,
                //     image: AssetImage('assets/images/pe1_image.jpg'))
                ),
            Container(
                //This container is used for Image.network widget
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Colors.blue),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withValues(alpha: 0.5),
                      spreadRadius: 8,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Image.network(
                    width: 200,
                    height: 250,
                    fit: BoxFit.cover,
                    alignment: Alignment(0, 0),
                    'https://www.meisterdrucke.us/kunstwerke/1260px/fachtali_abderrahim_-_Natural_beauty_Mexican_girl_surrounded_by_sunflowers_wall_Art_print_-_%28MeisterDrucke-1469760%29.jpg')),
          ],
        ),
      ),
    );
  }
}
