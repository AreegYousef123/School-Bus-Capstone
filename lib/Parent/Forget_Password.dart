import 'package:flutter/material.dart';
import 'package:untitled3/Parent/Login.dart';

class ForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF34D1B2),
          automaticallyImplyLeading: false,
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
                     child:  Text(
                        "Forget Password",
                        style: TextStyle(fontSize: 32),
                      ),
                  ),
                      SizedBox(height: 0),
                Transform.translate(
                  offset: Offset(90, 0),
                  child:
                      Container(
                        height: 2,
                        width: 210,
                        color: Color(0xFF34D1B2),
                      ),
                ),
                      SizedBox(height: 50),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Email',
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
                                maxLines: 1,
                              ),
                            ),
                            SizedBox(height: 30),
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
                            SizedBox(height: 30),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Confirm Password',
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
                            SizedBox(height: 35),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 60),
                              child: SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                                  },
                                  child: Text('Done!',style: TextStyle(color:Colors.white),),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFF34D1B2),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 50),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
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
