import 'package:flutter/material.dart';

class Driverprofile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF34D1B2),
        ),

        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              CustomAppBar(),
              SizedBox(height: 0),
              SingleChildScrollView(
                child: Align(
                  alignment: Alignment(0.8, -2.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Transform.translate(
                  offset: Offset(100, 0),
                  child:
                      Text(
                        "Driver Profile",
                        style: TextStyle(fontSize: 32),
                      ),
                  ),
                      SizedBox(height: 0),
                Transform.translate(
                  offset: Offset(100, 0),
                  child:
                      Container(
                        height: 2,
                        width: 160,
                        color: Color(0xFF34D1B2),
                      ),
                ),
                      SizedBox(height: 3,),
                      Center(child: Column(
                        children: [
                          Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyogmx3iG416G4CJHHOMunM-PwhpThiG4gF2UMP9Zpvu0xQlb6l8DsHC9TKSSnga-64JE&usqp=CAU" ,width: 150,),
                          SizedBox(height: 10,),
                        Transform.translate(
                          offset: Offset(-20, 0),
                          child:
                          Text("Name  : Mohamed Sayed  ",style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                          SizedBox(height: 5,),
                        Transform.translate(
                          offset: Offset(-40, 0),
                          child:
                          Text("Code  : 01122          ",style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                          SizedBox(height: 5,),
                        Transform.translate(
                          offset: Offset(-40, 0),
                          child:
                          Text("Bus   : Elsalam        ",style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                          SizedBox(height: 5,),
                        Transform.translate(
                          offset: Offset(-24, 0),
                          child:
                          Text("Phone : 01286734563    ",style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(height: 5,),
                        Transform.translate(
                          offset: Offset(-40, 0),
                          child:
                          Text("Address : Giza         " ,style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        ],
                      ),

                      ),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveClipper(),
      child: Container(
        height: MediaQuery.of(context).size.height / 3,
        color: Color(0xFF34D1B2),
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(size.width / 4, size.height + 40, size.width / 2, size.height - 60);
    path.quadraticBezierTo(size.width * 3 / 4, size.height - 160, size.width, size.height - 60);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
