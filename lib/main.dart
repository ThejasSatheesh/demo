import 'package:flutter/material.dart';
import 'widget.dart';
import 'constants.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var animationStarted = false;
  void initState() {
    print("awd");
    WidgetsBinding.instance!.addPostFrameCallback((_) => setState(() {
          animationStarted = !animationStarted;
        }));
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: AnimatedContainer(
            curve: Curves.easeInCubic,
            duration: Duration(seconds: 5),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topLeft,
                    colors: animationStarted ? colorList0 : colorList1)),
            child: Stack(
              fit: StackFit.expand,
              children: [SpotixLogo(), PhotoAndLocation()],
            ),
          ),
        ),
      ),
    );
  }
}