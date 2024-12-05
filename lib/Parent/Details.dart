import 'package:flutter/material.dart';
import 'package:untitled3/Parent/DriverProfile.dart';
import 'package:untitled3/Parent/LiveLocation.dart';
import 'package:untitled3/Parent/StudentList.dart';

class Details extends StatelessWidget {
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
              Expanded(
                child: SingleChildScrollView(
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Transform.translate(
                          offset: Offset(100, 0),
                          child:
                        Text(
                          "Bus Details",
                          style: TextStyle(fontSize: 32),
                         ),
                        ),
                        SizedBox(height: 0),
                  Transform.translate(
                    offset: Offset(100, 0),
                    child:Container(
                          height: 2,
                          width: 150,
                          color: Color(0xFF34D1B2),
                        ),
                  ),
                        SizedBox(height: 0),
                        Image.network(
                          "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcT4B-KV9Lj8_sGprpXeLsYjlhqbCchQSM6wgSI65yhRUdHBkqBD",
                          width: 300,

                        ),
                        SizedBox(height: 0),
                        Text("Bus Name: Elsalam"),
                        SizedBox(height: 4,),
                  Transform.translate(
                    offset: Offset(-20, 0),
                    child:
                        Text("Code: 01122"),
                  ),
                        SizedBox(height: 4,),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LiveLocation()),
                            );
                          },
                          child: Transform.translate(
                            offset: Offset(-20, 0),
                            child:
                           Text(
                            'Live Location',
                            style: TextStyle(color: Color(0xBD1EB597)),
                          ),
                          ),
                        ),
                        SizedBox(height: 4,),
                      Transform.translate(
                    offset: Offset(35, 0),
                    child:

                        Text("Driver Name: Mahamed Sayed"),
                      ),
                        SizedBox(height: 4,),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Driverprofile()),
                            );
                          },
                          child:Transform.translate(
                            offset: Offset(0, 0),
                          child: Text(
                            'Driver Code: 052207',
                            style: TextStyle(color: Color(0xBD1EB597)),
                          ),
                        ),
                        ),
                        SizedBox(height: 4,),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Studentlist()),
                            );
                          },

                          child: Transform.translate(
                            offset: Offset(-35, 0),
                            child: Text(
                            'Students',
                            style: TextStyle(color: Color(0xBD1EB597)),
                          ),
                          ),
                        ),
                      ],
                    ),
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