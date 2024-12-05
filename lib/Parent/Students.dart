import 'package:flutter/material.dart';

class StudentProfile extends StatelessWidget {
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
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Transform.translate(
                offset: Offset(100, 0),
                child:
                    Text(
                      "Student Profile",
                      style: TextStyle(fontSize: 32),
                    ),
                ),
                    SizedBox(height: 0),
              Transform.translate(
                offset: Offset(90, 0),
                child:
                    Container(
                      height: 2,
                      width: 180,
                      color: Color(0xFF34D1B2),
                    ),
              ),
                    SizedBox(height: 10),
                    Center(
                      child: Column(
                        children: [
                          Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8p08_7KLSV2DojlzJ2yB1tz-JEl3F7O9iSJo4TFpe1cS422e84BfXnN0gCuJqJz2v7-0&usqp=CAU",
                            width: 160,
                          ),
                          SizedBox(height: 20),
                          Text("Name  : Mostafa Mahmoud"),
                          SizedBox(height: 5),
                          Transform.translate(
                            offset: Offset(-38, 0),
                            child:
                            Text('Code : 0522044'),
                          ),
                          SizedBox(height: 10),
                          Transform.translate(
                            offset: Offset(-10, 0),
                            child:
                            Text("Driver : Mohamed Sayed"),
                          ),
                          SizedBox(height: 10,),
                          Transform.translate(
                              offset: Offset(-20, 0),
                              child: Text(
                                'Phone : 01286734563',
                              ),
                            ),
                          SizedBox(height: 10,),
                          Transform.translate(
                              offset: Offset(-40, 0),
                              child: Text(
                                'Address : Cairo',
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
//ggg kjkjjjkk
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
//
// Text("Name  : Mostafa Mahmoud"),
// Text('Code : 0522044',),
// Text("Driver : Mohamed Sayed"),
// Text("Phone : 01286734563"),
// Text("Address : Cairo"),