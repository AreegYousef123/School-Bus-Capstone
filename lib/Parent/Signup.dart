import 'package:flutter/material.dart';
import 'package:untitled3/Parent/Login.dart';

class Sign_up extends StatelessWidget {
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
            SingleChildScrollView(
              child: Align(
                alignment: Alignment(0.8, -2.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Transform.translate(
                      offset: Offset(100, 0),
                      child:  Text(
                        "Sign up",
                        style: TextStyle(fontSize: 32),
                      ),
                    ),
                    SizedBox(height: 0),
                    Transform.translate(
                      offset: Offset(100, 0),
                      child:   Container(
                        height: 2,
                        width: 100,
                        color: Color(0xFF34D1B2),
                      ),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Column(
                        children: [
                          SizedBox(height: 0),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Password',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFF34D1B2),),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFF34D1B2),),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFF34D1B2),),
                                ),
                              ),
                              obscureText: true,
                              maxLines: 1,
                            ),
                          ),
                          SizedBox(height: 15),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Student Name',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFF34D1B2),),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFF34D1B2),),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFF34D1B2),),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Student Phone',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFF34D1B2),),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFF34D1B2),),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFF34D1B2),),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Parent Name',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFF34D1B2),),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFF34D1B2),),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFF34D1B2),),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Parent Phone',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFF34D1B2),),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFF34D1B2),),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFF34D1B2),),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Address',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFF34D1B2),),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFF34D1B2),),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFF34D1B2),),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                           Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 30),
                             child: SizedBox(
                               width: double.infinity,
                               child:ElevatedButton(
                                 onPressed: () {
                                   Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                                 },
                                 child: Text('Sign up',style: TextStyle(color:Colors.white),),
                                 style: ElevatedButton.styleFrom(
                                   backgroundColor: Color(0xFF34D1B2),
                                 ),
                               ),
                             ),
                           ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Already have an Account!"),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                                },
                                child: Text(
                                  'Login',
                                  style: TextStyle(color: Color(0xBD1EB597),),
                                ),
                              ),
                            ],
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
