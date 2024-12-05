import 'package:flutter/material.dart';
import 'package:untitled3/Parent/SelectBus.dart';

class HomePageparent extends StatelessWidget {
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                    Transform.translate(
                    offset: Offset(100, 0),
                        child:
                        Text(
                          "Home Page",
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
                        SizedBox(height: 0),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.network(
                                "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcT4B-KV9Lj8_sGprpXeLsYjlhqbCchQSM6wgSI65yhRUdHBkqBD",
                                width: 400,

                              ),
                              SizedBox(height: 20,),
                              Padding(
                                padding:  EdgeInsets.symmetric(horizontal: 80),
                                child: SizedBox(
                                  width: double.infinity,
                                  child:  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Selectbus()));
                                    },
                                    child: Text('get Started',style: TextStyle(color:Colors.white),),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFF34D1B2),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]
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
        height: MediaQuery.of(context).size.height / 3, // Adjusted height to make it shorter
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
