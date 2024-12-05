import 'package:flutter/material.dart';
import 'package:untitled3/Parent/Login.dart';
import 'package:untitled3/School/HomePageSchool.dart';

class Homepage extends StatelessWidget {
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
                alignment: Alignment.topRight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Transform.translate(
                      offset: Offset(-80, 0),
                      child: Text(
                        "Welcome !",
                        style: TextStyle(fontSize: 32),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    SizedBox(height: 0),
                    Transform.translate(
                      offset: Offset(-105, 0),
                      child: Container(
                        height: 2,
                        width: 120,
                        color: Color(0xFF34D1B2),
                      ),
                    ),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 50),
                                    Text(
                                      "Please! choose your role in the application",
                                      style: TextStyle(color: Colors.grey, fontSize: 25),
                                      textAlign: TextAlign.left,
                                    ),
                                SizedBox(height: 120),
                                SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                                    },
                                    child: Text('Parent', style: TextStyle(color: Colors.white, fontSize: 15)),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFF34D1B2),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => HPS()));
                                    },
                                    child: Text('School', style: TextStyle(color: Colors.white, fontSize: 15)),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFF34D1B2),
                                    ),
                                  ),
                                ),


                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
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