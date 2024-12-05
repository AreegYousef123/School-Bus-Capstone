import 'package:flutter/material.dart';
import 'package:untitled3/Parent/Students.dart';

import '../School/AddDriver.dart';
class Studentlist extends StatefulWidget {
  const Studentlist({super.key});

  @override
  State<Studentlist> createState() => _StudentlistState();
}

class _StudentlistState extends State<Studentlist> {
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
                  children: [
                Transform.translate(
                offset: Offset(120, 0),
                child:
                    Text(
                      "Student List",
                      style: TextStyle(fontSize: 32),
                    ),
                ),
                    SizedBox(height: 1),
              Transform.translate(
                offset: Offset(120, 0),
                child:
                    Container(
                      height: 2,
                      width: 120,
                      color: Color(0xFF34D1B2),
                    ),
              ),
                    SizedBox(height: 20),
                    Center(
                      child: Column(
                        children: [
                          Text(" Student Names !" , style: TextStyle(fontSize: 20 ,fontWeight: FontWeight.normal , color: Color(0xFF34D1B2)),),
                          SizedBox(height: 20,),
                          TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => StudentProfile()));
                            },
                            child: Text(
                              'Areeg Yousef',
                              style: TextStyle(color: Colors.black,),
                            ),
                          ),
                          Text("    "),
                          TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => StudentProfile()));
                            },
                            child: Text(
                              'Mustafa Mahmoud"',
                              style: TextStyle(color: Colors.black,),
                            ),
                          ),
                          Text("   "),
                          TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => StudentProfile()));
                            },
                            child: Text(
                              'Yousef Mahamed ',
                              style: TextStyle(color: Colors.black,),
                            ),
                          ),
                          Text("   "),
                          TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => StudentProfile()));
                            },
                            child: Text(
                              'Mahamed Yaser',
                              style: TextStyle(color: Colors.black,),
                            ),
                          ),
                          Text("   "),
                          TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => StudentProfile()));
                            },
                            child: Text(
                              "Karem Mahamed",
                              style: TextStyle(color: Colors.black,),
                            ),
                          ),
                          Text("   "),
                          TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => StudentProfile()));
                            },
                            child: Text(
                              'Fatma Yousef',
                              style: TextStyle(color: Colors.black,),
                            ),
                          ),

                        ],
                      ),
                    )
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

