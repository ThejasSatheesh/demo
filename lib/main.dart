import 'package:flutter/material.dart';
//import '';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Color(0xFFADD8E6), Colors.white])),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned(
                  top: 0,
                  width: 325,
                  child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      child: Image.asset("assets/spotixLogo.png")),
                ),
                Positioned.fill(
                  bottom: -175,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              blurRadius: 5,
                              offset: Offset(5, 5),
                              color: Colors.blueGrey),
                        ], borderRadius: BorderRadius.all(Radius.circular(25))),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          child: Image.asset(
                            "assets/myphoto.jpeg",
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                          Text("Thejas Satheesh",
                              style: TextStyle(
                                  fontSize: 40,
                                  color: Color(0xFF545455),
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 15),
                          Text(
                            """
Thayyil house,
Kanimangalam P.O.
Thrissur-027
                        """,
                            style: TextStyle(
                                fontSize: 25, color: Color(0xFF545455)),
                          )
                    ],
                  ),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}