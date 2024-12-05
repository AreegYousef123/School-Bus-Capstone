import 'package:flutter/material.dart';
import 'package:untitled3/Parent/Forget_Password.dart';
import 'package:untitled3/Parent/Home_PageParent.dart';
import 'package:untitled3/Parent/Signup.dart';

class Login extends StatelessWidget {
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Transform.translate(
                       offset: Offset(-80, 0),
                      child:  Text(
                        "Sign in",
                        style: TextStyle(fontSize: 32),
                      ),
                  ),
                      SizedBox(height: 0),
                Transform.translate(
                  offset: Offset(-80, 0),
                  child:Container(
                        height: 2,
                        width: 90,
                        color: Color(0xFF34D1B2),
                      ),
                ),
                      SizedBox(height: 50),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Username',
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
                            SizedBox(height: 20),
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
                            SizedBox(height: 50),
                            TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPassword()));
                              },
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Text(
                                  'Forget Password ?',
                                style: TextStyle(color: Color(0xBD1EB597),),
                                ),
                              ),
                            ),
                            SizedBox(height: 40),

                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 30),
                              child: SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePageparent()));
                                  },
                                  child: Text('Login', style: TextStyle(color: Colors.white,fontSize: 15)),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFF34D1B2),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Don't have an account?"),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Sign_up()));
                                  },
                                  child: Text(
                                    'Create an account',
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
              Spacer(), // إضافة Spacer لدفع العناصر لأعلى ومنعها من الوصول لأسفل الشاشة
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
