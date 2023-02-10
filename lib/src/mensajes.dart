import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class pagina2 extends StatelessWidget {
  const pagina2({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              ClipPath(
                clipper: DrawClip1(),
                child: Container(
                  height: size.height,
                  width: size.width,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color(0xff46ddbf).withOpacity(0.5),
                    Color(0xff3088e2).withOpacity(0.5)
                  ], begin: Alignment.topLeft, end: Alignment.bottomLeft)),
                ),
              ),
              ClipPath(
                clipper: DrawClip(),
                child: Container(
                  height: size.height,
                  width: size.width,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xff46ddbf), Color(0xff3088e2)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomLeft)),
                ),
              ),
              Container(
                height: size.height,
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40, top: 100),
                      child: Text(
                        "Welcome",
                        /*style: GoogleFonts.raleway(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),*/
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, top: 0),
                      child: Text(
                        "Back",
                        /*style: GoogleFonts.raleway(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),*/
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40, top: 120, right: 50),
                      child: input("E-mail Address", false),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40, top: 10, right: 50),
                      child: input("Password", true),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: size.width / 2, top: 20),
                      child: Text(
                        "FORGOT PASSWORD ?",
                        /*style: GoogleFonts.raleway(
                            fontSize: 12,
                            color: Color(0xff46ddbf),
                            fontWeight: FontWeight.w700),*/
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: size.width / 3, right: size.width / 3, top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Material(
                              elevation: 10,
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset('images/ico.png',
                                  height: 40, width: 40)),
                          Material(
                              elevation: 10,
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset('images/ico.png',
                                  height: 40, width: 40)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text(
                        "Don't have an account ?",
                        /*  style: GoogleFonts.raleway(
                            fontSize: 18,
                            color: Colors.grey[400],
                            fontWeight: FontWeight.w700),*/
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        "SIGNUP",
                        /* style: GoogleFonts.raleway(
                            fontSize: 18,
                            color: Color(0xff46ddbf),
                            fontWeight: FontWeight.w700),*/
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget input(String hint, bool pass) {
  return Container(
    child: TextFormField(
      decoration: InputDecoration(
          hintText: hint,
          /*hintStyle: GoogleFonts.raleway(color: Colors.grey),*/
          contentPadding: EdgeInsets.only(top: 15, bottom: 15),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2.0)),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xff46ddbf), width: 1.0))),
    ),
  );
}

class DrawClip1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addOval(
        Rect.fromCircle(center: Offset(size.width, 50.0), radius: 150));
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class DrawClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addOval(
        Rect.fromCircle(center: Offset(size.width * 0.3, 50.0), radius: 200));
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
