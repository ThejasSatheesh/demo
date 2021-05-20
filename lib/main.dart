import 'package:flutter/material.dart';
import 'widget.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Color> colorList1 = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white
  ];

  List<Color> colorList0 = [
    Colors.blue.shade800,
    Colors.blue.shade600,
    Colors.blue.shade400,
    Colors.blue.shade200,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white
  ];
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