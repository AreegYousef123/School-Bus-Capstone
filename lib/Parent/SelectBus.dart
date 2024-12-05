import 'package:flutter/material.dart';
import 'package:untitled3/Parent/Details.dart';

class Selectbus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                      Image.network(
                        "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcT4B-KV9Lj8_sGprpXeLsYjlhqbCchQSM6wgSI65yhRUdHBkqBD",
                        width: 250,

                      ),
                      SizedBox(height: 20,),
                     Transform.translate(
                    offset: Offset(-57, 0),
                     child:  Text("Bus Name" , style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold ),),
                     ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(onPressed:(){
                             Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Details()));
                          },
                            child: Text("Show all details",style: TextStyle(color: Color(
                                0xff56d4d8), fontWeight: FontWeight.w100),),
                          ),
                          MaterialButton(
                            onPressed: () {

                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                            },
                            child: Text("Select" , style:TextStyle(color: Colors.white),),
                            color: Color(0xFF34D1B2),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(
                              "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcT4B-KV9Lj8_sGprpXeLsYjlhqbCchQSM6wgSI65yhRUdHBkqBD",
                              width: 250,

                            ),
                            SizedBox(height: 20,),
                            Transform.translate(
                              offset: Offset(-57, 0),
                              child:  Text("Bus Name", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold ),),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(onPressed:(){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Details()));
                                },
                                  child: Text("Show all details",style: TextStyle(color: Color(
                                      0xff56d4d8), fontWeight: FontWeight.w100),),
                                ),
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                  },
                                  child: Text("Select" , style:TextStyle(color: Colors.white),),
                                  color: Color(0xFF34D1B2),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
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
        height: MediaQuery.of(context).size.height / 6, // Adjusted height to make it shorter
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
